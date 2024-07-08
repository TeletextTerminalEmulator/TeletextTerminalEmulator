from litex.gen import *
from litex.soc.interconnect.csr import *
from litex.soc.interconnect.axi import AXILiteInterface, AXILiteSRAM

from migen.fhdl.structure import _Operator

class Teletext(LiteXModule, AutoCSR):

    def __init__(self, pads, mem):

        self.pads = pads

        # CSR
        self.frame_finished = CSRStatus(1, description="The frame has been fully transmitted and the next one has not started yet.")
        self.page_number = CSRStorage(8, reset=0, description="The page number of the displayed page.")
        self.magazine_number = CSRStorage(3, reset=1, description="The magazine number of the displayed page.")
        self.page_control_bits = CSRStorage(fields = [
            CSRField("erase_page"),
            CSRField("newsflash"),
            CSRField("subtitle"),
            CSRField("suppress_header"),
            CSRField("update_indicator"),
            CSRField("interrupted_sequence"),
            CSRField("inhibit_display"),
            CSRField("magazine_serial"),
            CSRField("national_option_character_subset", size=3, values=[("0bXXX", "subset")])
        ], description="All settings that are transmitted with the teletext header packet.")
        self.buffer = CSRStorage(description="Which of the two buffers should be used.")

        # Memory
        port = mem.get_port(clock_domain="tele")
        self.specials += port
        
        # Generator Signals
        line_arr = Array([Signal(8 * 4) for _ in range(10)])
        line = Signal(40*7)

        self.sync.tele += [line[idx*7*4:(idx+1)*7*4].eq(Cat(dword[0:7], dword[8:15], dword[16:23], dword[24:31])) for (idx, dword) in enumerate(line_arr)]

        line_index = Signal(5)
        frame_flag = Signal()

        self.specials += Instance(
            "teletext_generator",
            i_CLK_IN = ClockSignal("tele"),
            i_RESET_N = ~ResetSignal("tele"),

            i_LINE_IN = line,
            i_PAGE_CONTROL_BITS = self.page_control_bits.storage,
            i_PAGE_NUMBER = self.page_number.storage,
            i_MAGAZINE_NUMBER = self.magazine_number.storage,

            o_LINE_INDEX = line_index,
            o_FRAME_FLAG = frame_flag,

            o_DATA_OUT = self.pads.data,
            o_SYNC_OUT = self.pads.sync,
            o_FRAME_FINISHED = self.frame_finished.status,
        )

        ## Memory read

        # Buffer select
        current_buffer = Signal(self.buffer.storage.nbits)
        self.sync.tele += If(self.frame_finished.status, current_buffer.eq(self.buffer.storage)).Else(current_buffer.eq(current_buffer))

        # Char Counter
        # Since the memory works in 32 bit steps we can read 4 chars in a single access
        char_index = Signal(max=10)
        char_index_next = Signal(char_index.nbits)

        self.comb += If(
            char_index >= 9,
            char_index_next.eq(0)
        ).Else(
            char_index_next.eq(char_index + 1)
        )
        self.sync.tele += char_index.eq(char_index_next)

        # Read address
        self.comb += port.adr.eq(0)
        self.comb += port.adr.eq(((current_buffer * 2 + frame_flag) * 24 + line_index) * 10 + char_index_next)
        
        
        # Read
        self.sync.tele += [
            If(idx == char_index,
                line_arr[idx].eq(port.dat_r)
            ).Else(
                line_arr[idx].eq(line_arr[idx])
            )
            for idx
            in range(len(line_arr))
        ]
        



if __name__ == "__main__":
    interface = Teletext(Record([("data", 1), ("sync", 1)]))
    print(interface.__dict__)