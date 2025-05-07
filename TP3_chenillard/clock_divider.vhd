library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock_divider is
    port (
        CLKin  : in  std_logic;
        RST    : in  std_logic;
        N      : in  std_logic_vector(4 downto 0);
        CLKout : out std_logic
    );
end entity;

architecture Behavioral of clock_divider is
    signal counter : std_logic_vector(23 downto 0) := (others => '0');
begin

    process(CLKin)
    begin
        if rising_edge(CLKin) then
            if RST = '0' then
                counter <= (others => '0');
            else
                counter <= std_logic_vector(unsigned(counter) + 1);
            end if;
        end if;
    end process;

    -- Sélection dynamique du bit N comme horloge divisée
    CLKout <= counter(to_integer(unsigned(N)));

end Behavioral;
