library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4bits is
    Port ( din0  : in STD_LOGIC_VECTOR (3 downto 0);    -- Input 0 with 4 bits
           din1  : in STD_LOGIC_VECTOR (3 downto 0);    -- Input 1 with 4 bits
           din2  : in STD_LOGIC_VECTOR (3 downto 0);    -- Input 2 with 4 bits
           din3  : in STD_LOGIC_VECTOR (3 downto 0);    -- Input 3 with 4 bits
           addr  : in STD_LOGIC_VECTOR (1 downto 0);    -- Address input with 2 bits
           dout  : out STD_LOGIC_VECTOR (3 downto 0));  -- Output with 4 bit
end mux4bits;

architecture Behavioral of mux4bits is
begin
    -- MULTIPLEXER 
    mux : process (din0, din1, din2, din3, addr)        -- Initialize the process
    begin
        if addr = "00" then dout <= din0;               -- Output receives Input 0 when input address is b00
        elsif addr = "01" then dout <= din1;            -- Output receives Input 1 when input address is b01
        elsif addr = "10" then dout <= din2;            -- Output receives Input 2 when input address is b10
        else dout <= din3;                              -- Output receives Input 3 when input address is b11
        end if; 
    end process; 
end Behavioral;
