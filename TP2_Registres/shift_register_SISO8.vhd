library ieee;
use ieee.std_logic_1164.all;

entity shift_register_SISO8 is
    port (
        Si    : in  std_logic;                -- Entrée série
        CLK   : in  std_logic;                -- Horloge
        SETn  : in  std_logic;                -- Set asynchrone actif bas
        RSTn  : in  std_logic;                -- Reset asynchrone actif bas
        So    : out std_logic                 -- Sortie série (bit de poids faible)
    );
end entity;

architecture Behavioral of shift_register_SISO8 is
    signal reg : std_logic_vector(7 downto 0) := (others => '0');
begin
    process (CLK, SETn, RSTn)
    begin
        if SETn = '0' then
            reg <= (others => '1'); -- Mise à 1 asynchrone
        elsif RSTn = '0' then
            reg <= (others => '0'); -- Mise à 0 asynchrone
        elsif rising_edge(CLK) then
            reg <= Si & reg(7 downto 1); -- Décalage à droite
        end if;
    end process;

    So <= reg(0); -- Bit de poids faible
end architecture;
