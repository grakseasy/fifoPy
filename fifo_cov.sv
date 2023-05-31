`define cov
`ifdef COVERAGE_EN

covergroup fifo_cg with function sample(fifo_transaction item);
option.per_instance = 1;
option.name = "fifo_cg";

    coverpoint_din      : coverpoint item.din
    {
        bins    din_0 = {[8'h00:8'h7F]};
        bins    din_1 = {[8'h80:8'hBF]};
        bins    din_2 = {[8'hC0:8'hFF]};
    }
    coverpoint_dout      : coverpoint item.dout
    {
        bins    dout_0 = {[8'h00:8'h7F]};
        bins    dout_1 = {[8'h80:8'hBF]};
        bins    dout_2 = {[8'hC0:8'hFF]};
    }
    coverpoint_wr_en      : coverpoint item.wr_en
    {
        bins    wr_en_0 = {0};
        bins    wr_en_1 = {1};
    }
    coverpoint_rd_en      : coverpoint item.rd_en
    {
        bins    rd_en_0 = {0};
        bins    rd_en_1 = {1};
    }
    coverpoint_full      : coverpoint item.full
    {
        bins    full_0 = {0};
        bins    full_1 = {1};
    }
    coverpoint_empty      : coverpoint item.empty
    {
        bins    empty_0 = {0};
        bins    empty_1 = {1};
    }
    coverpoint_wrap_on_full      : coverpoint item.wrap_on_full
    {
        bins    wrap_on_full_0 = {0};
        bins    wrap_on_full_1 = {1};
    }
endgroup


`endif