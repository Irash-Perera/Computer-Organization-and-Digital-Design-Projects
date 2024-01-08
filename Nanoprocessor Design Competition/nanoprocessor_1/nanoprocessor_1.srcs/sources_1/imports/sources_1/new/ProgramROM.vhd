library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity ProgramROM is
    Port ( Mem_select : in STD_LOGIC_VECTOR (2 downto 0);
           Ins_bus : out STD_LOGIC_VECTOR (11 downto 0));
end ProgramROM;

architecture Behavioral of ProgramROM is
type rom_type is array (0 to 7) of std_logic_vector(11 downto 0);


signal program_rom : rom_type := (
--"101110000000", -- MOVI R7,0
--"100010001111", -- MOVI R1, 15
--"100100000001", -- MOVI R2, 1
--"010100000000", -- NEG R2
--"001110010000", -- ADD R7, R1
--"001110100000", -- ADD R7, R2
--"111110000001", -- JZR R7,1
--"110000000101" -- JZR R0,5

"101110000000", -- MOVI R7, 0
"100010000001", -- MOVI R1, 1
"100100000010", -- MOVI R2, 2
"100110000011", -- MOVI R3, 3
"001110010000", -- ADD R7, R1
"001110100000", -- ADD R7, R2
"001110110000", -- ADD R7, R3
"110000000000"  -- JZR R0,0
);

begin

Ins_bus <= program_rom(to_integer(unsigned(Mem_select)));


end Behavioral;
