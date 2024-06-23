library verilog;
use verilog.vl_types.all;
entity finall is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        S               : out    vl_logic_vector(3 downto 0);
        sum             : out    vl_logic_vector(3 downto 0);
        tm              : out    vl_logic_vector(3 downto 0)
    );
end finall;
