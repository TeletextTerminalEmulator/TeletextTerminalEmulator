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

from litex.soc.cores.clock import *
from litex.soc.integration.soc import SoCRegion
from litex.soc.integration.soc_core import *
from litex.soc.integration.builder import *
from litex.soc.cores.video import VideoVGAPHY
from litex.soc.cores.led import LedChaser
from litex.soc.interconnect.axi import AXILiteInterface

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
        bus = AXILiteInterface(data_width=32, address_width=6)
        teletext_pins = platform.request("teletext")
        # print(bus.layout_flat())
        # print(bus.w.__dict__)
        self.specials += Instance(
            "teletext_controller",
            i_TELETEXT_CLK = self.crg.cd_tele.clk,
            o_DATA_OUT = teletext_pins.data,
            o_SYNC_OUT = teletext_pins.sync,
            i_S_AXI_ACLK = self.crg.cd_sys.clk,
            i_S_AXI_ARESETN = ~ResetSignal("sys"),
            i_S_AXI_AWADDR = bus.aw.addr,
            i_S_AXI_AWPROT = bus.aw.prot,
            i_S_AXI_AWVALID = bus.aw.valid,
            o_S_AXI_AWREADY = bus.aw.ready,
            i_S_AXI_WDATA = bus.w.data,
            i_S_AXI_WSTRB = bus.w.strb,
            i_S_AXI_WVALID = bus.w.valid,
            o_S_AXI_WREADY = bus.w.ready,
            o_S_AXI_BRESP = bus.b.resp,
            o_S_AXI_BVALID = bus.b.valid,
            i_S_AXI_BREADY = bus.b.ready,
            i_S_AXI_ARADDR = bus.ar.addr,
            i_S_AXI_ARPROT = bus.ar.prot,
            i_S_AXI_ARVALID = bus.ar.valid,
            o_S_AXI_ARREADY = bus.ar.ready,
            o_S_AXI_RDATA = bus.r.data,
            o_S_AXI_RRESP = bus.r.resp,
            o_S_AXI_RVALID = bus.r.valid,
            i_S_AXI_RREADY = bus.r.ready
        )

        teletext_region = SoCRegion(origin=0x80000000, size=2**6, cached=False)
        self.bus.add_slave(name="teletext", slave=bus, region=teletext_region)

        self.ps2 = PS2Interface(pads = platform.request("usbhost"))

        self.add_uart("terminal_uart", uart_name="terminal_uart", baudrate=115200, fifo_depth=16)

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
    sdopts = parser.target_group.add_mutually_exclusive_group()
    sdopts.add_argument("--with-spi-sdcard",       action="store_true", help="Enable SPI-mode SDCard support.")
    sdopts.add_argument("--with-sdcard",           action="store_true", help="Enable SDCard support.")
    parser.add_target_argument("--sdcard-adapter",                      help="SDCard PMOD adapter (digilent or numato).")
    args = parser.parse_args()
    argdict = parser.soc_argdict
    argdict['bus_standard'] = "axi-lite"

    soc = BaseSoC(
        sys_clk_freq        = args.sys_clk_freq,
        **argdict
    )
    soc.platform.add_extension(basys3_constraints._sdcard_pmod_io)
    if args.with_spi_sdcard:
        soc.add_spi_sdcard()
    if args.with_sdcard:
        soc.add_sdcard()
    builder = Builder(soc, **parser.builder_argdict)
    if args.build:
        builder.build(**parser.toolchain_argdict)

    if args.load:
        prog = soc.platform.create_programmer()
        prog.load_bitstream(builder.get_bitstream_filename(mode="sram"))

if __name__ == "__main__":
    main()
