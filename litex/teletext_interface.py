from litex.gen import *
from litex.soc.interconnect.csr import *
from litex.soc.interconnect.axi import AXILiteInterface

class Teletext(LiteXModule, AutoCSR):

    def __init__(self, pads):

        self.pads = pads

        self.bus = AXILiteInterface(data_width=32, address_width=6)
        self.frame_finished = CSRStatus(1, description="The frame has been fully transmitted and the next one has not started yet.")

        self.specials += Instance(
            "teletext_controller",
            i_TELETEXT_CLK = ClockSignal("tele"),
            o_DATA_OUT = self.pads.data,
            o_SYNC_OUT = self.pads.sync,
            o_FRAME_FINISHED = self.frame_finished.status,
            i_S_AXI_ACLK = ClockSignal(),
            i_S_AXI_ARESETN = ~ResetSignal("sys"),
            i_S_AXI_AWADDR = self.bus.aw.addr,
            i_S_AXI_AWPROT = self.bus.aw.prot,
            i_S_AXI_AWVALID = self.bus.aw.valid,
            o_S_AXI_AWREADY = self.bus.aw.ready,
            i_S_AXI_WDATA = self.bus.w.data,
            i_S_AXI_WSTRB = self.bus.w.strb,
            i_S_AXI_WVALID = self.bus.w.valid,
            o_S_AXI_WREADY = self.bus.w.ready,
            o_S_AXI_BRESP = self.bus.b.resp,
            o_S_AXI_BVALID = self.bus.b.valid,
            i_S_AXI_BREADY = self.bus.b.ready,
            i_S_AXI_ARADDR = self.bus.ar.addr,
            i_S_AXI_ARPROT = self.bus.ar.prot,
            i_S_AXI_ARVALID = self.bus.ar.valid,
            o_S_AXI_ARREADY = self.bus.ar.ready,
            o_S_AXI_RDATA = self.bus.r.data,
            o_S_AXI_RRESP = self.bus.r.resp,
            o_S_AXI_RVALID = self.bus.r.valid,
            i_S_AXI_RREADY = self.bus.r.ready
        )