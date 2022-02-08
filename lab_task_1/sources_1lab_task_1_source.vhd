LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY basic_gates IS                   -- Initialize the entity
     PORT (a, b: IN STD_LOGIC;          -- Sets the inputs
           y_and, y_or, y_xor, y_not,
           y_nand, y_nor, y_xnor:
                OUT STD_LOGIC);         -- Sets the outputs
END ENTITY;

ARCHITECTURE rtl OF basic_gates IS      -- Initialize the architecture for the entity
BEGIN           
     y_and <= a AND b;                  -- Sets AND output
     y_or <= a OR b;                    -- Sets OR output
     y_xor <= a XOR b;                  -- Sets XOR output
     y_not <= NOT a;                    -- Sets NOT output
     y_nand <= a NAND b;                -- Sets NAND output
     y_nor <= a NOR b;                  -- Sets NOR output
     y_xnor <= a XNOR b;                -- Sets XNOR output
END ARCHITECTURE;
