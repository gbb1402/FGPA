library ieee;
use ieee.std_logic_1164.all;

entity flipflop_JK is
    port (
        J   : in  std_logic;  -- Entrée J
        K   : in  std_logic;  -- Entrée K
        CLK : in  std_logic;  -- Horloge (front montant)
        Q   : out std_logic;  -- Sortie
        Qn  : out std_logic   -- Sortie complémentée
    );
end entity;

architecture Behavioral of flipflop_JK is
    signal Q_int : std_logic := '0'; -- Signal interne pour stocker l'état
begin
    process (CLK)
    begin
        if rising_edge(CLK) then
            if (J = '0' and K = '0') then
                Q_int <= Q_int;        -- Memorisation
            elsif (J = '0' and K = '1') then
                Q_int <= '0';           -- Reset
            elsif (J = '1' and K = '0') then
                Q_int <= '1';           -- Set
            elsif (J = '1' and K = '1') then
                Q_int <= not Q_int;     -- Toggle
            end if;
        end if;
    end process;

    -- Assignations des sorties
    Q  <= Q_int;
    Qn <= not Q_int;
end Behavioral;
