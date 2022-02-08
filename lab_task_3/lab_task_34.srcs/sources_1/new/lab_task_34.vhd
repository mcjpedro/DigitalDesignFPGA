library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab34 is
    Port ( din0 : in STD_LOGIC_VECTOR  (3 downto 0);
           din1 : in STD_LOGIC_VECTOR  (3 downto 0);
           din2 : in STD_LOGIC_VECTOR  (3 downto 0);
           din3 : in STD_LOGIC_VECTOR  (3 downto 0); 
           addr : in STD_LOGIC_VECTOR  (1 downto 0);
           an   : out STD_LOGIC_VECTOR (3 downto 0);
           dout : out STD_LOGIC_VECTOR (6 downto 0));
end lab34;

architecture Behavioral of lab34 is
    signal mux2seg : STD_LOGIC_VECTOR (3 downto 0);
    
    -- MULTIPLEXER COMPONENT
    component mux4bits is
    Port ( din0  : in STD_LOGIC_VECTOR (3 downto 0);    -- Input 0 with 4 bits
           din1  : in STD_LOGIC_VECTOR (3 downto 0);    -- Input 1 with 4 bits
           din2  : in STD_LOGIC_VECTOR (3 downto 0);    -- Input 2 with 4 bits
           din3  : in STD_LOGIC_VECTOR (3 downto 0);    -- Input 3 with 4 bits
           addr  : in STD_LOGIC_VECTOR (1 downto 0);    -- Address input with 2 bits
           dout  : out STD_LOGIC_VECTOR (3 downto 0));  -- Output with 4 bit
    end component;
    
    -- SEVEN-SEGMENT DISPLAY COMPONENT
    component lab24 is
    Port ( din  : in  STD_LOGIC_VECTOR (3 downto 0);    -- Input data with 4 bits
           dout : out STD_LOGIC_VECTOR (6 downto 0);    -- Display output 7 bits (7-segments)
           an   : out STD_LOGIC_VECTOR (3 downto 0));   -- Output "an" = "1110"
    end component;
begin
    mux : mux4bits port map (din0 => din0, din1 => din1, din2 => din2, din3 => din3, addr => addr, dout => mux2seg);
    seg : lab24 port map (din => mux2seg, dout => dout, an => an);
end Behavioral;
