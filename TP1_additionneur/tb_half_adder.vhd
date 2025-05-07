-- Ceci est un testbench : il ne décrit pas un circuit physique,
-- mais simule le comportement du demi-additionneur.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_half_adder is
end tb_half_adder;

architecture sim of tb_half_adder is

    -- Composant à tester (le DUT : Device Under Test)
    component half_adder
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            S : out STD_LOGIC;
            C : out STD_LOGIC
        );
    end component;

    -- Signaux internes utilisés pour stimuler le DUT
    signal A_tb, B_tb : STD_LOGIC;
    signal S_tb, C_tb : STD_LOGIC;

begin

    -- Instanciation du demi-additionneur
    uut: half_adder
        port map (
            A => A_tb,
            B => B_tb,
            S => S_tb,
            C => C_tb
        );

    -- Processus de test : applique les combinaisons possibles
    stimulus: process
    begin
        -- Cas 1 : A = 0, B = 0 => S = 0, C = 0
        A_tb <= '0';
        B_tb <= '0';
        wait for 10 ns;

        -- Cas 2 : A = 0, B = 1 => S = 1, C = 0
        A_tb <= '0';
        B_tb <= '1';
        wait for 10 ns;

        -- Cas 3 : A = 1, B = 0 => S = 1, C = 0
        A_tb <= '1';
        B_tb <= '0';
        wait for 10 ns;

        -- Cas 4 : A = 1, B = 1 => S = 0, C = 1
        A_tb <= '1';
        B_tb <= '1';
        wait for 10 ns;

        -- Fin du test
        wait;
    end process;

end sim;
