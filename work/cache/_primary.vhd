library verilog;
use verilog.vl_types.all;
entity cache is
    port(
        reset           : in     vl_logic;
        seletorVia      : in     vl_logic;
        habilita        : in     vl_logic;
        clock           : in     vl_logic;
        endereco        : in     vl_logic_vector(2 downto 0);
        entradaDeDados  : in     vl_logic_vector(7 downto 0);
        saidaDeDados    : out    vl_logic_vector(7 downto 0);
        hit             : out    vl_logic;
        miss            : out    vl_logic;
        lru1            : out    vl_logic;
        lru2            : out    vl_logic;
        dirty1          : out    vl_logic;
        dirty2          : out    vl_logic;
        valid1          : out    vl_logic;
        valid2          : out    vl_logic
    );
end cache;
