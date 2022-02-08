library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab25 is
    Port   ( din  : in STD_LOGIC_VECTOR  (4 downto 0);
             dout : out STD_LOGIC_VECTOR (6 downto 0);
             an   : out STD_LOGIC_VECTOR (3 downto 0));
end lab25;

architecture Behavioral of lab25 is
    signal res: STD_LOGIC_VECTOR (3 downto 0):= X"0";   -- Signal res
begin
    an <= "1110";
    
    -- priority encoder implementation avoiding dash symbol
    res <= X"4" when din(4) = '1' else          -- "1xxxx"
           X"3" when din(3) = '1' else          -- "01xxx"
           X"2" when din(2) = '1' else          -- "001xx"
           X"1" when din(1) = '1' else          -- "0001x"
           X"0" when din(0) = '1';              -- "00001"
    
    -- segment display
    dout <= not "0111111" when res = X"0" else  -- Display 0
            not "0000110" when res = X"1" else  -- Display 1
            not "1011011" when res = X"2" else  -- Display 2
            not "1001111" when res = X"3" else  -- Display 3
            not "1100110";                      -- Display 4
end Behavioral;
