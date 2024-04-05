from functools import reduce
from operator import xor
from migen import *
from migen.genlib.cdc import MultiReg
from migen.genlib.fifo import SyncFIFO

from litex.gen import *
from litex.soc.interconnect.csr import *

class PS2Interface(LiteXModule, AutoCSR):

    def __init__(self, pads):

        self.pads = pads

        self.data_available = CSRStatus(1, description="Whether a key has been pressed or not")
        self.scancode = CSRStatus(8, description="Scancode of the pressed key")
        self.fifo_level = CSRStatus(4, description="Level of FIFO")

        self.submodules.scancode_fifo = SyncFIFO(8, 8)

        ###

        clk = Signal()
        data = Signal()

        self.specials += [
            MultiReg(pads.ps2_clk, clk),
            MultiReg(pads.ps2_data, data),
        ]

        # Clock detection
        clk_d    = Signal()
        clk_fall = Signal()
        self.sync += clk_d.eq(clk)
        self.comb += clk_fall.eq(~clk & clk_d)

        # FIFO to CSR
        self.comb += self.data_available.status.eq(self.scancode_fifo.readable)
        self.comb += self.scancode.status.eq(self.scancode_fifo.dout)
        self.comb += self.scancode_fifo.re.eq(self.scancode.re)

        self.comb += self.scancode_fifo.replace.eq(False)
        self.comb += self.fifo_level.status.eq(self.scancode_fifo.level)

        # Read PS/2

        scancode_shift = Signal(11)
        scancode_shift_pos = Signal(max=12)
        scancode_valid = Signal()

        self.comb += scancode_valid.eq(scancode_shift[0] & ~scancode_shift[10] & (scancode_shift[1] != reduce(xor, scancode_shift[2:10])))
        
        self.sync += If(
            scancode_shift_pos == 11,
            scancode_shift_pos.eq(0),
            self.scancode_fifo.din.eq(scancode_shift[2:10]),
            self.scancode_fifo.we.eq(scancode_valid)
        ).Else(
            self.scancode_fifo.we.eq(False),
            If(
                clk_fall,
                scancode_shift.eq(Cat(data, scancode_shift[:-1])),
                scancode_shift_pos.eq(scancode_shift_pos + 1),
            ).Else(
                scancode_shift.eq(scancode_shift),
                scancode_shift_pos.eq(scancode_shift_pos)
            )
        )


if __name__ == "__main__":
    interface = PS2Interface(Record([("ps2_clk", 1), ("ps2_data", 1)]))
    print(interface.__dict__)