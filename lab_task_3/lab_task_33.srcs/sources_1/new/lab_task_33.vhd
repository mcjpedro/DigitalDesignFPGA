library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab33 is
    Port ( din : in STD_LOGIC_VECTOR (3 downto 0);          -- Input data with 4 bits
           addr1 : in STD_LOGIC_VECTOR (1 downto 0);        -- Input address in MUX with 2 bits 
           addr2 : in STD_LOGIC_VECTOR (1 downto 0);        -- Input address in DMUX with 2 bits
           dout : out STD_LOGIC_VECTOR (3 downto 0));       -- Output with 4 bits
end lab33;

architecture struct of lab33 is
    signal mux2demux : std_logic;                           -- Signal to be trasnfered -> MUX to DMUX
    
    -- MULTIPLEXER
    component lab31 is                                      -- Component declaration
        Port ( din : in STD_LOGIC_VECTOR (3 downto 0);      -- Input data (entity din) with 4 signal 
               addr : in STD_LOGIC_VECTOR (1 downto 0);     -- Input address (entity addr1) with 2 bits
               dout : out STD_LOGIC);                       -- Output with 1 bit to be transfered to DMUX
    end component lab31;
    
    -- DEMULTIPLEXER
    component lab32 is                                      -- Component declaration
        Port ( din  : in STD_LOGIC;                         -- Input data with 1 bit coming from the MUX 
               addr : in STD_LOGIC_VECTOR  (1 downto 0);    -- Input address (entity addr2) with 2 bits
               dout : out STD_LOGIC_VECTOR (3 downto 0));   -- Output with 1 bit
    end component lab32;
begin
    mux : lab31 port map (din => din, addr => addr1, dout => mux2demux);
    demux : lab32 port map (din => mux2demux, addr => addr2, dout => dout);
end struct;
