library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Déclaration de l'entité full_adder
entity full_adder is
    Port (
        A     : in  STD_LOGIC;  -- Premier bit
        B     : in  STD_LOGIC;  -- Deuxième bit
        Cin   : in  STD_LOGIC;  -- Retenue d'entrée
        S     : out STD_LOGIC;  -- Somme
        Cout  : out STD_LOGIC   -- Retenue de sortie
    );
end full_adder;

-- Architecture structurelle utilisant deux demi-additionneurs
architecture Structural of full_adder is

    -- Déclaration du composant half_adder
    component half_adder
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            S : out STD_LOGIC;
            C : out STD_LOGIC
        );
    end component;

    -- Signaux internes
    signal S1, C1, C2 : STD_LOGIC;

begin

    -- Première instance de half_adder : A + B
    HA1: half_adder
        port map (
            A => A,
            B => B,
            S => S1,
            C => C1
        );

    -- Deuxième instance de half_adder : S1 + Cin
    HA2: half_adder
        port map (
            A => S1,
            B => Cin,
            S => S,
            C => C2
        );

    -- Calcul de la retenue finale
    Cout <= C1 or C2;

end Structural;
