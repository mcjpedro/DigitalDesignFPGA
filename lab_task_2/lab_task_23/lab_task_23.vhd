library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab23 is
    Port ( din  : in STD_LOGIC_VECTOR  (3 downto 0);
           dout : out STD_LOGIC_VECTOR (3 downto 0));
end lab23;

architecture rt1 of lab23 is
begin
    dout <= "0000" when din = "0000" else
            "0001" when din = "0001" else
            "0011" when din = "0010" else
            "0010" when din = "0011" else
            "0110" when din = "0100" else
            "0111" when din = "0101" else
            "0101" when din = "0110" else
            "0100" when din = "0111" else
            "1100" when din = "1000" else
            "1101" when din = "1001" else
            "1111" when din = "1010" else
            "1110" when din = "1011" else
            "1010" when din = "1100" else
            "1011" when din = "1101" else
            "1001" when din = "1110" else
            "1000";
end rt1;
