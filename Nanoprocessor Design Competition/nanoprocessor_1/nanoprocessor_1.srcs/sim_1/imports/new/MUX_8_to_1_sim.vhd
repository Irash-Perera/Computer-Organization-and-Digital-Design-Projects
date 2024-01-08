library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_8_to_1_sim is
--  Port ( );
end MUX_8_to_1_sim;

architecture Behavioral of MUX_8_to_1_sim is
component MUX_8_to_1
    Port ( R0 : in STD_LOGIC_VECTOR (3 downto 0);
           R1 : in STD_LOGIC_VECTOR (3 downto 0);
           R2 : in STD_LOGIC_VECTOR (3 downto 0);
           R3 : in STD_LOGIC_VECTOR (3 downto 0);
           R4 : in STD_LOGIC_VECTOR (3 downto 0);
           R5 : in STD_LOGIC_VECTOR (3 downto 0);
           R6 : in STD_LOGIC_VECTOR (3 downto 0);
           R7 : in STD_LOGIC_VECTOR (3 downto 0);
           O : out STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0));
end component;
signal R0,R1,R2,R3,R4,R5,R6,R7:STD_LOGIC_VECTOR(3 downto 0);
signal O:STD_LOGIC_VECTOR(3 downto 0);
signal S:STD_LOGIC_VECTOR(2 downto 0);
begin
UUT:MUX_8_to_1
Port map(R0(3 downto 0)=>R0(3 downto 0),
         R1(3 downto 0)=>R1(3 downto 0),
         R2(3 downto 0)=>R2(3 downto 0),
         R3(3 downto 0)=>R3(3 downto 0),
         R4(3 downto 0)=>R4(3 downto 0),
         R5(3 downto 0)=>R5(3 downto 0),
         R6(3 downto 0)=>R6(3 downto 0),
         R7(3 downto 0)=>R7(3 downto 0),
         O(3 downto 0)=>O(3 downto 0),
         S(2 downto 0)=>S(2 downto 0));
process
begin
--index:200295J:0011 0000 1110 0110 0111
--      200646M:0011 0000 1111 1100 0110
--      200260A:0011 0000 1110 0100 0100
--      200617C:0011 0000 1111 0000 1001
--      200084L:0011 0000 1001 1001 0100
R0<="0111";
R1<="0110";
R2<="1110";
R3<="0110";
R4<="1100";
R5<="1111";
R6<="0100";
R7<="1001";
S<="111";
WAIT FOR 100ns;
S<="100";
WAIT FOR 100ns;
S<="001";
WAIT FOR 100ns;
S<="110";
WAIT FOR 100ns;
S<="000";
WAIT FOR 100ns;
S<="101";
WAIT FOR 100ns;
S<="110";
WAIT FOR 100ns;
S<="111";
WAIT;

end process;

end Behavioral;
