library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity toplevel is
    port (
        LEDR : out std_logic_vector(9 downto 0);  
        LEDG : out std_logic_vector(7 downto 0);  
        SW   : in  std_logic_vector(9 downto 0)
    );
end entity;

architecture Behavioral of toplevel is

    -- Déclaration du composant full_adder_4b
    component full_adder_4b
        port (
            C    : in  std_logic; 
            A    : in  std_logic_vector(3 downto 0);
            B    : in  std_logic_vector(3 downto 0);
            S    : out std_logic_vector(3 downto 0);
            Cout : out std_logic
        );
    end component;

    -- Signaux intermédiaires pour les LEDS
    signal A_sw    : std_logic_vector(3 downto 0);
    signal B_sw    : std_logic_vector(3 downto 0);
    signal Cin_sw  : std_logic;
    signal S_ledg  : std_logic_vector(3 downto 0);
    signal Cout_ledg : std_logic;

begin

    -- Récupération des entrées
    A_sw   <= SW(3 downto 0);
    B_sw   <= SW(7 downto 4);
    Cin_sw <= SW(9);

    -- Instanciation de l'additionneur 4 bits
    adder_instance : full_adder_4b
        port map (
            A    => A_sw,
            B    => B_sw,
            C    => Cin_sw,
            S    => S_ledg,
            Cout => Cout_ledg
        );

    -- Assignation des résultats aux LEDS
    LEDG(3 downto 0) <= S_ledg;
    LEDG(7) <= Cout_ledg;
    LEDG(6 downto 4) <= (others => '0'); -- LEDs vertes inutilisées éteintes

    -- Affichage des entrées sur les LEDs rouges
    LEDR(3 downto 0) <= A_sw;
    LEDR(7 downto 4) <= B_sw;
    LEDR(9) <= Cin_sw;
    LEDR(8) <= '0'; -- LED inutilisée

end architecture;
