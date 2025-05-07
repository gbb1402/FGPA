library ieee;
use ieee.std_logic_1164.all;

entity flipflop_JKrs is
    port (
        J     : in  std_logic;
        K     : in  std_logic;
        CLK   : in  std_logic;
        SETn  : in  std_logic;  -- Set asynchrone (actif bas)
        RSTn  : in  std_logic;  -- Reset asynchrone (actif bas)
        Q     : out std_logic;
        Qn    : out std_logic
    );
end flipflop_JKrs;

architecture Behavioral of flipflop_JKrs is
    signal Q_int : std_logic := '0';
begin
    process (CLK, SETn, RSTn)
    begin
        if (SETn = '0') then
            Q_int <= '1';  -- SET asynchrone prioritaire
        elsif (RSTn = '0') then
            Q_int <= '0';  -- RESET asynchrone
        elsif rising_edge(CLK) then
            if (J = '0' and K = '0') then
                Q_int <= Q_int;      -- Mémorisation
            elsif (J = '0' and K = '1') then
                Q_int <= '0';        -- Reset synchrone
            elsif (J = '1' and K = '0') then
                Q_int <= '1';        -- Set synchrone
            elsif (J = '1' and K = '1') then
                Q_int <= not(Q_int);  -- Toggle synchrone
            end if;
        end if;
    end process;

    -- Sorties
    Q  <= Q_int;
    Qn <= not(Q_int);
end Behavioral;
