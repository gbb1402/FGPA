library ieee;
use ieee.std_logic_1164.all;

entity tb_flipflop_JK is
end tb_flipflop_JK;

architecture Behavioral of tb_flipflop_JK is
    -- Composant à tester
    component flipflop_JK
        port (
            J   : in  std_logic;
            K   : in  std_logic;
            CLK : in  std_logic;
            Q   : out std_logic;
            Qn  : out std_logic
        );
    end component;

    -- Signaux de test
    signal J   : std_logic := '0';
    signal K   : std_logic := '0';
    signal CLK : std_logic := '0';
    signal Q   : std_logic;
    signal Qn  : std_logic;

begin

    -- Instanciation
    uut: flipflop_JK
        port map (
            J   => J,
            K   => K,
            CLK => CLK,
            Q   => Q,
            Qn  => Qn
        );

    -- Génération d'une horloge 20ns
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
        -- Initialisation
        J <= '0'; K <= '0';
        wait for 20 ns;

        -- Set Q à 1
        J <= '1'; K <= '0';
        wait for 20 ns;

        -- Reset Q à 0
        J <= '0'; K <= '1';
        wait for 20 ns;

        -- Toggle
        J <= '1'; K <= '1';
        wait for 20 ns;

        -- Toggle encore
        wait for 20 ns;

        -- Fin de simulation
        wait;
    end process;

end Behavioral;
