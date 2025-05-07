library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity toplevel is
    port (
        CLOCK_50_B6A : in  std_logic;
        KEY          : in  std_logic_vector(3 downto 0);
        LEDG         : out std_logic_vector(7 downto 0)
    );
end entity;

architecture Structural of toplevel is

    component bistable
        port (
            CLK : in  std_logic;
            RST : in  std_logic;
            X   : in  std_logic;
            Y   : out std_logic
        );
    end component;

    signal Y_signal : std_logic;

begin

    fsm_inst : bistable
        port map (
            CLK => CLOCK_50_B6A,
            RST => KEY(0),
            X   => not KEY(1),
            Y   => Y_signal
        );

    -- Nouvelle ligne : allume toutes les LEDG en fonction de Y
    LEDG <= (others => Y_signal);

end architecture;
