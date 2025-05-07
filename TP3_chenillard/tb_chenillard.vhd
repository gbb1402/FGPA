library ieee;
use ieee.std_logic_1164.all;

entity tb_chenillard is
end tb_chenillard;

architecture test of tb_chenillard is

    component chenillard
        port (
            CLK  : in  std_logic;
            RST  : in  std_logic;
            CHEN : out std_logic_vector(9 downto 0)
        );
    end component;

    -- Signaux de test
    signal CLK  : std_logic := '0';
    signal RST  : std_logic := '0';
    signal CHEN : std_logic_vector(9 downto 0);

begin

    -- Instanciation du chenillard
    uut: chenillard
        port map (
            CLK  => CLK,
            RST  => RST,
            CHEN => CHEN
        );

    -- Horloge lente simulée (100 ns de période)
    clk_process : process
    begin
        while true loop
            CLK <= '0';
            wait for 50 ns;
            CLK <= '1';
            wait for 50 ns;
        end loop;
    end process;

    -- Stimuli
    stim_proc : process
    begin
        -- Reset actif
        RST <= '0';
        wait for 100 ns;

        -- Désactivation du reset
        RST <= '1';

        -- Laisse tourner la simulation 1500 ns pour voir les étapes
        wait for 1500 ns;

        wait;
    end process;

end architecture;
