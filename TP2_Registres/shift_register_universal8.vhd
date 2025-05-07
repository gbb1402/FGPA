library ieee;
use ieee.std_logic_1164.all;

entity shift_register_universal8 is
    port (
        SSL   : in  std_logic;                          -- Serial Shift Left input
        SSR   : in  std_logic;                          -- Serial Shift Right input
        Pi    : in  std_logic_vector(7 downto 0);       -- Parallel input
        SEL   : in  std_logic_vector(2 downto 0);       -- Operation select
        CLK   : in  std_logic;
        SETn  : in  std_logic;
        RSTn  : in  std_logic;
        SOR   : out std_logic;                          -- Serial Output Right
        SOL   : out std_logic;                          -- Serial Output Left
        Qo    : out std_logic_vector(7 downto 0)        -- Parallel Output
    );
end entity;

architecture Behavioral of shift_register_universal8 is
    signal reg : std_logic_vector(7 downto 0) := (others => '0');
begin

    process(CLK, RSTn, SETn)
    begin
        if SETn = '0' then
            reg <= (others => '1'); -- Set asynchrone
        elsif RSTn = '0' then
            reg <= (others => '0'); -- Reset asynchrone
        elsif rising_edge(CLK) then
            case SEL is
                when "000" => -- Hold
                    reg <= reg;
                when "001" => -- Shift right
                    reg <= SSR & reg(7 downto 1);
                when "010" => -- Shift left
                    reg <= reg(6 downto 0) & SSL;
                when "101" => -- Rotate right
                    reg <= reg(0) & reg(7 downto 1);
                when "110" => -- Rotate left
                    reg <= reg(6 downto 0) & reg(7);
                when "111" => -- Parallel load
                    reg <= Pi;
                when others =>
                    reg <= reg;
            end case;
        end if;
    end process;

    -- Sorties
    Qo  <= reg;
    SOR <= reg(0);  -- Bit de poids faible
    SOL <= reg(7);  -- Bit de poids fort
end architecture;
