library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab32 is
    Port ( din  : in STD_LOGIC;                             -- Input data with 1 bit
           addr : in STD_LOGIC_VECTOR  (1 downto 0);        -- Input address with 2 bits
           dout : out STD_LOGIC_VECTOR (3 downto 0));       -- Output with 4 bits
end lab32;

architecture Behavioral of lab32 is
begin
    -- DEMULTIPLEXER
    demux : process (din, addr) begin                       -- Initializes the process
        dout <= "0000";                                     -- Sets the output in b0000
        if addr = "00" then dout(0) <= din;                 -- Outputs b000X when input adress is b00, X = Input data                          
        elsif addr = "01" then dout(1) <= din;              -- Outputs b00X0 when input adress is b01, X = Input data
        elsif addr = "10" then dout(2) <= din;              -- Outputs b0X00 when input adress is b10, X = Input data
        else dout(3) <= din;                                -- Outputs bX000 when input adress is b11, X = Input data
        end if; 
    end process;
end Behavioral;
