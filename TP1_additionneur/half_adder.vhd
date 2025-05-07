library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Déclaration de l'entité
entity half_adder is
    Port (
        A : in STD_LOGIC;     -- Premier opérande
        B : in STD_LOGIC;     -- Deuxième opérande
        S : out STD_LOGIC;    -- Somme A + B
        C : out STD_LOGIC     -- Retenue (Carry)
    );
end half_adder;

-- Architecture décrivant le comportement
architecture Behavioral of half_adder is
begin
    S <= A xor B;  -- Somme
    C <= A and B;  -- Retenue
end Behavioral;
