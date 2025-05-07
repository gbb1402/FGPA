library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Le testbench ne prend pas de ports
entity tb_full_adder is
end tb_full_adder;

architecture sim of tb_full_adder is

    -- Déclaration du composant à tester
    component full_adder
        Port (
            A     : in  STD_LOGIC;
            B     : in  STD_LOGIC;
            Cin   : in  STD_LOGIC;
            S     : out STD_LOGIC;
            Cout  : out STD_LOGIC
        );
    end component;

    -- Signaux internes pour piloter et observer le full_adder
    signal A_tb, B_tb, Cin_tb : STD_LOGIC;
    signal S_tb, Cout_tb      : STD_LOGIC;

begin

    -- Instanciation du full_adder
    uut: full_adder
        port map (
            A    => A_tb,
            B    => B_tb,
            Cin  => Cin_tb,
            S    => S_tb,
            Cout => Cout_tb
        );

    -- Processus de test : on applique toutes les combinaisons
    stimulus: process
    begin
        -- Cas 0 : A=0, B=0, Cin=0 → S=0, Cout=0
        A_tb <= '0'; B_tb <= '0'; Cin_tb <= '0';
        wait for 10 ns;

        -- Cas 1 : A=0, B=0, Cin=1 → S=1, Cout=0
        Cin_tb <= '1';
        wait for 10 ns;

        -- Cas 2 : A=0, B=1, Cin=0 → S=1, Cout=0
        B_tb <= '1'; Cin_tb <= '0';
        wait for 10 ns;

        -- Cas 3 : A=0, B=1, Cin=1 → S=0, Cout=1
        Cin_tb <= '1';
        wait for 10 ns;

        -- Cas 4 : A=1, B=0, Cin=0 → S=1, Cout=0
        A_tb <= '1'; B_tb <= '0'; Cin_tb <= '0';
        wait for 10 ns;

        -- Cas 5 : A=1, B=0, Cin=1 → S=0, Cout=1
        Cin_tb <= '1';
        wait for 10 ns;

        -- Cas 6 : A=1, B=1, Cin=0 → S=0, Cout=1
        B_tb <= '1'; Cin_tb <= '0';
        wait for 10 ns;

        -- Cas 7 : A=1, B=1, Cin=1 → S=1, Cout=1
        Cin_tb <= '1';
        wait for 10 ns;

        -- Fin du test
        wait;
    end process;

end sim;
