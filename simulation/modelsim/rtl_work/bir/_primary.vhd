library verilog;
use verilog.vl_types.all;
entity bir is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        birth           : out    vl_logic_vector(3 downto 0)
    );
end bir;
