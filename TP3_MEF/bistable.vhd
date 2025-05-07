library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bistable is
    port (
        CLK : in std_logic;
        RST : in std_logic;
        X   : in std_logic;
        Y   : out std_logic
    );
end bistable;

architecture behavioral of bistable is

    -- Déclaration du type d'état
    type state_type is (A, B, C, D);
    signal current_state, next_state : state_type := A;

begin

    -- 1. Registre d'état (synchrone, reset)
    process (CLK)
    begin
        if rising_edge(CLK) then
            if RST = '0' then
                current_state <= A;
            else
                current_state <= next_state;
            end if;
        end if;
    end process;

    -- 2. Logique de transition d'états
    process (current_state, X)
    begin
        case current_state is
            when A =>
                if X = '1' then
                    next_state <= B;
                else
                    next_state <= A;
                end if;

            when B =>
                if X = '0' then
                    next_state <= C;
                else
                    next_state <= B;
                end if;

            when C =>
                if X = '1' then
                    next_state <= D;
                else
                    next_state <= C;
                end if;

            when D =>
                if X = '0' then
                    next_state <= A;
                else
                    next_state <= D;
                end if;
        end case;
    end process;

    -- 3. Sortie associée à l’état (FSM Moore)
    process (current_state)
    begin
        case current_state is
            when A | B =>
                Y <= '0';  -- LEDs OFF
            when C | D =>
                Y <= '1';  -- LEDs ON
        end case;
    end process;

end behavioral;
