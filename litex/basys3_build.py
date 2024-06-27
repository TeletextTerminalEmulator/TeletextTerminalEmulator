#!/usr/bin/env python3

#
# This file is part of LiteX-Boards.
#
# Copyright (c) 2020-2021 Xuanyu Hu <xuanyu.hu@whu.edu.cn>
# SPDX-License-Identifier: BSD-2-Clause

from migen import *

from litex.gen import *

import basys3_constraints
from ps2_interface import PS2Interface
from teletext_interface import Teletext

from litex.soc.cores.clock import *
from litex.soc.integration.soc import SoCRegion
from litex.soc.integration.soc_core import *
from litex.soc.integration.builder import *
from litex.soc.cores.led import LedChaser

# CRG ----------------------------------------------------------------------------------------------

class _CRG(LiteXModule):
    def __init__(self, platform, sys_clk_freq):
        self.rst    = Signal()
        self.cd_sys = ClockDomain()
        self.cd_tele = ClockDomain()

        self.pll = pll = S7MMCM(speedgrade=-1)
        self.comb += pll.reset.eq(platform.request("user_btnc") | self.rst)

        pll.register_clkin(platform.request("clk100"), 100e6)
        pll.create_clkout(self.cd_sys, sys_clk_freq)
        pll.create_clkout(self.cd_tele, 6.9375e6, margin=25e-5)
        platform.add_false_path_constraints(self.cd_sys.clk, pll.clkin) # Ignore sys_clk to pll.clkin path created by SoC's rst.
        #platform.add_platform_command("set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk100_IBUF]")

# BaseSoC ------------------------------------------------------------------------------------------

class BaseSoC(SoCCore):
    def __init__(self, sys_clk_freq=75e6, with_led_chaser=True, with_video_terminal=False, **kwargs):
        platform = basys3_constraints.Platform()
        
        platform.add_source_dir(path="./vhdl/")

        # CRG --------------------------------------------------------------------------------------
        self.crg = _CRG(platform, sys_clk_freq)

        # SoCCore ----------------------------------_-----------------------------------------------
        SoCCore.__init__(self, platform, sys_clk_freq, ident="LiteX SoC on Basys3", **kwargs)
        
        # Teletext ---------------------------------------------------------------------------------
        self.teletext = Teletext(pads=platform.request("teletext"))

        teletext_region = SoCRegion(origin=0x80000000, size=2**6, cached=False)
        self.bus.add_slave(name="teletext", slave=self.teletext.bus, region=teletext_region)

        self.ps2 = PS2Interface(pads = platform.request("usbhost"))

        self.add_uart("terminal_uart", uart_name="terminal_uart", baudrate=115200, fifo_depth=1024)

        # Leds -------------------------------------------------------------------------------------
        if with_led_chaser:
            self.leds = LedChaser(
                pads         = platform.request_all("user_led"),
                sys_clk_freq = sys_clk_freq)

# Build --------------------------------------------------------------------------------------------  
def main():
    from litex.build.parser import LiteXArgumentParser
    parser = LiteXArgumentParser(platform=basys3_constraints.Platform, description="LiteX SoC on Basys3.")
    parser.add_target_argument("--sys-clk-freq", default=100e6, type=float, help="System clock frequency.")

    parser.set_defaults(bus_standard="axi-lite", cpu_variant="imac", integrated_sram_size=2**16, integrated_rom_size=2**20)
    args = parser.parse_args()

    soc = BaseSoC(
        sys_clk_freq        = args.sys_clk_freq,
        **parser.soc_argdict
    )
    builder = Builder(soc, **parser.builder_argdict)
    if args.build:
        builder.build(**parser.toolchain_argdict)

    if args.load:
        prog = soc.platform.create_programmer()
        prog.load_bitstream(builder.get_bitstream_filename(mode="sram"))

if __name__ == "__main__":
    main()
