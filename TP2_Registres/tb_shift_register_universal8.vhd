library ieee;
use ieee.std_logic_1164.all;

entity tb_shift_register_universal8 is
end tb_shift_register_universal8;

architecture test of tb_shift_register_universal8 is

    component shift_register_universal8
        port (
            SSL   : in  std_logic;
            SSR   : in  std_logic;
            Pi    : in  std_logic_vector(7 downto 0);
            SEL   : in  std_logic_vector(2 downto 0);
            CLK   : in  std_logic;
            SETn  : in  std_logic;
            RSTn  : in  std_logic;
            SOR   : out std_logic;
            SOL   : out std_logic;
            Qo    : out std_logic_vector(7 downto 0)
        );
    end component;

    -- Signaux de test
    signal SSL, SSR, CLK, SETn, RSTn, SOR, SOL : std_logic := '0';
    signal Pi  : std_logic_vector(7 downto 0) := (others => '0');
    signal SEL : std_logic_vector(2 downto 0) := "000";
    signal Qo  : std_logic_vector(7 downto 0);

begin

    -- Instanciation du registre universel
    uut: shift_register_universal8
        port map (
            SSL   => SSL,
            SSR   => SSR,
            Pi    => Pi,
            SEL   => SEL,
            CLK   => CLK,
            SETn  => SETn,
            RSTn  => RSTn,
            SOR   => SOR,
            SOL   => SOL,
            Qo    => Qo
        );

    -- Horloge 20 ns
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

        -- Parallel load
        Pi <= "10101010";
        SEL <= "111";  -- Load
        wait for 20 ns;

        -- Hold
        SEL <= "000";
        wait for 20 ns;

        -- Shift right avec SSR = 1
        SSR <= '1';
        SEL <= "001";
        wait for 20 ns;

        -- Shift left avec SSL = 0
        SSL <= '0';
        SEL <= "010";
        wait for 20 ns;

        -- Rotate right
        SEL <= "101";
        wait for 20 ns;

        -- Rotate left
        SEL <= "110";
        wait for 20 ns;

        -- Fin
        wait;
    end process;

end architecture;
