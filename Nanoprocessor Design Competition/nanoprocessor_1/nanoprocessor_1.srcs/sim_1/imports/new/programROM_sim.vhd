library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity programROM_sim is
--  Port ( );
end programROM_sim;
architecture Behavioral of programROM_sim is
component programROM
 Port ( Mem_select : in STD_LOGIC_VECTOR (2 downto 0);
          Ins_bus : out STD_LOGIC_VECTOR (11 downto 0));
end component;
signal Mem_select:STD_LOGIC_VECTOR(2 downto 0);
signal Ins_bus:STD_LOGIC_VECTOR(11 downto 0);
begin
UUT:programROM
    port map(
            Mem_select(2 downto 0)=>Mem_select(2 downto 0),
            Ins_bus(11 downto 0)=>Ins_bus(11 downto 0));
process
begin
--Index num: 210471F : 110 011 011 000 100 111
--           210434V : 110 011 011 000 000 010
Mem_select<="110";
wait for 100ns;

Mem_select<="011";
wait for 100ns;

Mem_select<="000";
wait for 100ns;

Mem_select<="100";
wait for 100ns;

Mem_select<="111";
wait for 100ns;

Mem_select<="010";
wait for 100ns;

Mem_select<="000";
wait for 100ns;

Mem_select<="110";
wait;

end process;

end Behavioral;
