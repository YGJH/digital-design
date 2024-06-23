library verilog;
use verilog.vl_types.all;
entity dff_pos_sync is
    port(
        d               : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        q               : out    vl_logic
    );
end dff_pos_sync;
