library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity toplevel is
    port (
        CLOCK_50_B6A : in std_logic;
        KEY          : in std_logic_vector(3 downto 0); -- KEY(0) = reset
        LEDR         : out std_logic_vector(9 downto 0)
    );
end entity;

architecture Structural of toplevel is

    component clock_divider
        port (
            CLKin  : in  std_logic;
            RST    : in  std_logic;
            N      : in  std_logic_vector(4 downto 0);
            CLKout : out std_logic
        );
    end component;

    component chenillard
        port (
            CLK  : in  std_logic;
            RST  : in  std_logic;
            CHEN : out std_logic_vector(9 downto 0)
        );
    end component;

    signal clk_slow : std_logic;
    constant N_div : std_logic_vector(4 downto 0) := "10100";  -- N = 20

begin

    -- Diviseur d’horloge
    divider_inst : clock_divider
        port map (
            CLKin  => CLOCK_50_B6A,
            RST    => KEY(0),
            N      => N_div,
            CLKout => clk_slow
        );

    -- Chenillard
    chenillard_inst : chenillard
        port map (
            CLK  => clk_slow,
            RST  => KEY(0),
            CHEN => LEDR
        );

end architecture;
