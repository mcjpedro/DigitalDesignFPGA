library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab24 is
    Port ( din  : in  STD_LOGIC_VECTOR (3 downto 0);
           dout : out STD_LOGIC_VECTOR (6 downto 0);
           an   : out STD_LOGIC_VECTOR (3 downto 0));
end lab24;

architecture Behavioral of lab24 is

begin
    an   <= "1110";
    
    dout <= not "0111111" when din = X"0" else -- 0
            not "0000011" when din = X"1" else -- 1
            not "1011011" when din = X"2" else -- 2
            not "1001111" when din = X"3" else -- 3
            not "1100110" when din = X"4" else -- 4
            not "1101101" when din = X"5" else -- 5
            not "1111101" when din = X"6" else -- 6
            not "0000111" when din = X"7" else -- 7
            not "1111111" when din = X"8" else -- 8
            not "1101111" when din = X"9" else -- 9
            not "1110111" when din = X"A" else -- a
            not "1111100" when din = X"b" else -- b 
            not "0111001" when din = X"C" else -- c
            not "1011110" when din = X"d" else -- d 
            not "1111001" when din = X"E" else -- e  
            not "1110001" when din = X"F" else -- f
            not "0000000";                     -- null value
end Behavioral;