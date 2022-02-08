library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab31 is
    Port ( din  : in STD_LOGIC_VECTOR (3 downto 0);     -- Input with 4 bits
           addr : in STD_LOGIC_VECTOR (1 downto 0);     -- Address input with 2 bits
           dout : out STD_LOGIC);                       -- Output with 1 bit
end lab31;

architecture Behavioral of lab31 is
begin
    -- MULTIPLEXER 
    mux : process (din, addr)                           -- Initialize the process
    begin
        if addr = "00" then dout <= din(0);             -- Output receives Input 0 when input address is b00
        elsif addr = "01" then dout <= din(1);          -- Output receives Input 1 when input address is b01
        elsif addr = "10" then dout <= din(2);          -- Output receives Input 2 when input address is b10
        else dout <= din(3);                            -- Output receives Input 3 when input address is b11
        end if; 
    end process; 
end Behavioral;
