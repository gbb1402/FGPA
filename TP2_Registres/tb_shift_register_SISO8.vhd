library ieee;
use ieee.std_logic_1164.all;

entity tb_shift_register_SISO8 is
end tb_shift_register_SISO8;

architecture test of tb_shift_register_SISO8 is

    component shift_register_SISO8
        port (
            Si    : in  std_logic;
            CLK   : in  std_logic;
            SETn  : in  std_logic;
            RSTn  : in  std_logic;
            So    : out std_logic
        );
    end component;

    signal Si    : std_logic := '0';
    signal CLK   : std_logic := '0';
    signal SETn  : std_logic := '1';
    signal RSTn  : std_logic := '1';
    signal So    : std_logic;

begin

    -- Instanciation du registre
    uut: shift_register_SISO8
        port map (
            Si    => Si,
            CLK   => CLK,
            SETn  => SETn,
            RSTn  => RSTn,
            So    => So
        );

    -- Horloge : 20 ns de période
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
        -- Reset asynchrone
        RSTn <= '0'; wait for 20 ns;
        RSTn <= '1'; wait for 20 ns;

        -- Entrée série : injecte '1', puis '0', puis '1', etc.
        Si <= '1'; wait for 20 ns;
        Si <= '0'; wait for 20 ns;
        Si <= '1'; wait for 20 ns;
        Si <= '1'; wait for 20 ns;
        Si <= '0'; wait for 20 ns;
        Si <= '0'; wait for 20 ns;
        Si <= '1'; wait for 20 ns;

        wait;
    end process;

end architecture;
