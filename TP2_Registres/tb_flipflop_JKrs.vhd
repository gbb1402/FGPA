library ieee;
use ieee.std_logic_1164.all;

entity tb_flipflop_JKrs is
end tb_flipflop_JKrs;

architecture Behavioral of tb_flipflop_JKrs is
    component flipflop_JKrs
        port (
            J     : in  std_logic;
            K     : in  std_logic;
            CLK   : in  std_logic;
            SETn  : in  std_logic;
            RSTn  : in  std_logic;
            Q     : out std_logic;
            Qn    : out std_logic
        );
    end component;

    -- Signaux de test
    signal J, K, CLK, SETn, RSTn : std_logic := '1';
    signal Q, Qn : std_logic;

begin

    -- Instanciation du composant
    uut : flipflop_JKrs
        port map (
            J     => J,
            K     => K,
            CLK   => CLK,
            SETn  => SETn,
            RSTn  => RSTn,
            Q     => Q,
            Qn    => Qn
        );

    -- Horloge
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
        -- Reset asynchrone actif
        RSTn <= '0'; wait for 20 ns;
        RSTn <= '1'; wait for 20 ns;

        -- Set asynchrone actif
        SETn <= '0'; wait for 20 ns;
        SETn <= '1'; wait for 20 ns;

        -- Test J=1 K=0 (SET synchrone)
        J <= '1'; K <= '0'; wait for 20 ns;

        -- Test J=0 K=1 (RESET synchrone)
        J <= '0'; K <= '1'; wait for 20 ns;

        -- Toggle (J=1, K=1)
        J <= '1'; K <= '1'; wait for 40 ns;

        wait;
    end process;

end Behavioral;
