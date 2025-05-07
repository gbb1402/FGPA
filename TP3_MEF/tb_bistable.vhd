library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_bistable is
end tb_bistable;

architecture test of tb_bistable is

    component bistable_deux_process
        port (
            CLK : in std_logic;
            RST : in std_logic;
            X   : in std_logic;
            Y   : out std_logic
        );
    end component;

    -- Signaux de test
    signal CLK : std_logic := '0';
    signal RST : std_logic := '1';
    signal X   : std_logic := '0';
    signal Y   : std_logic;

begin

    -- Instanciation du module
    uut: bistable_deux_process
        port map (
            CLK => CLK,
            RST => RST,
            X   => X,
            Y   => Y
        );

    -- Génération de l'horloge (20 ns de période)
    clk_process : process
    begin
        while true loop
            CLK <= '0';
            wait for 10 ns;
            CLK <= '1';
            wait for 10 ns;
        end loop;
    end process;

    -- Stimuli
    stim_proc : process
    begin
        -- Reset actif au début
        RST <= '0';
        wait for 20 ns;

        -- Désactivation du reset
        RST <= '1';

        -- Appui 1 : X = 1 (A -> B)
        X <= '1'; wait for 40 ns;

        -- Relâche : X = 0 (B -> C)
        X <= '0'; wait for 40 ns;

        -- Appui 2 : X = 1 (C -> D)
        X <= '1'; wait for 40 ns;

        -- Relâche : X = 0 (D -> A)
        X <= '0'; wait for 40 ns;

        wait;
    end process;

end architecture;
