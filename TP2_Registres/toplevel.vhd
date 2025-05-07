library ieee;
use ieee.std_logic_1164.all;

entity toplevel is
    port (
        SW   : in  std_logic_vector(9 downto 0);   -- Interrupteurs
        KEY  : in  std_logic_vector(2 downto 0);   -- Touches (actives bas)
        LEDG : out std_logic_vector(7 downto 0)    -- LEDs vertes
    );
end entity;

architecture Behavioral of toplevel is

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

    -- Signaux internes
    signal data_out : std_logic_vector(7 downto 0);

begin

    -- Instanciation du registre
    reg_univ : shift_register_universal8
        port map (
            SSL   => SW(8),
            SSR   => SW(9),
            Pi    => (others => '0'),         -- chargement parallèle non utilisé
            SEL   => SW(2 downto 0),
            CLK   => not KEY(0),              -- horloge sur front montant
            SETn  => KEY(2),
            RSTn  => KEY(1),
            SOR   => open,
            SOL   => open,
            Qo    => data_out
        );

    -- Sortie sur LEDG
    LEDG <= data_out;

end architecture;
