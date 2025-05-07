library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_clock_divider is
end tb_clock_divider;

architecture test of tb_clock_divider is

    component clock_divider
        port (
            CLKin  : in  std_logic;
            RST    : in  std_logic;
            N      : in  std_logic_vector(4 downto 0);
            CLKout : out std_logic
        );
    end component;

    -- Signaux de test
    signal CLKin  : std_logic := '0';
    signal RST    : std_logic := '1';
    signal N      : std_logic_vector(4 downto 0) := "00010"; -- N=2 → division par 8
    signal CLKout : std_logic;

begin

    -- Instanciation du composant
    uut: clock_divider
        port map (
            CLKin  => CLKin,
            RST    => RST,
            N      => N,
            CLKout => CLKout
        );

    -- Horloge rapide : 50 MHz → période = 20 ns
    clk_process : process
    begin
        while true loop
            CLKin <= '0';
            wait for 10 ns;
            CLKin <= '1';
            wait for 10 ns;
        end loop;
    end process;

    -- Stimuli
    stim_proc : process
    begin
        -- Reset actif
        RST <= '0';
        wait for 40 ns;

        -- Fin du reset
        RST <= '1';
        wait for 500 ns; -- observe CLKout pendant un certain temps

        wait;
    end process;

end architecture;
