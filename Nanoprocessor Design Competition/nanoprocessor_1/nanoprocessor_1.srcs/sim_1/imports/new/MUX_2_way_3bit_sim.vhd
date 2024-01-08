library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_2_way_3bit_sim is
--  Port ( );
end MUX_2_way_3bit_sim;

architecture Behavioral of MUX_2_way_3bit_sim is
component MUX_2_way_3bit
    Port ( Jump_Address : in STD_LOGIC_VECTOR (2 downto 0);
           Inc_Address : in STD_LOGIC_VECTOR (2 downto 0);
           Jump_flag : in STD_LOGIC;
           Address : out STD_LOGIC_VECTOR(2 downto 0));
end component;
signal Jump_Address:STD_LOGIC_VECTOR(2 downto 0);
signal Inc_Address:STD_LOGIC_VECTOR(2 downto 0);
signal Jump_flag:STD_LOGIC;
signal Address:STD_LOGIC_VECTOR(2 downto 0);

begin
UUT:MUX_2_way_3bit
port map(
    Jump_Address(2 downto 0)=>Jump_Address(2 downto 0),
    Inc_Address(2 downto 0)=>Inc_Address(2 downto 0),
    Address(2 downto 0)=>Address(2 downto 0),
    Jump_flag=>Jump_flag);

process
begin
-- index numbers: 210471F :110 011 011 000 100 111
--                210434V :110 011 011 000 000 010
Inc_Address<="110";
Jump_Address<="011";
Jump_flag<='1';

wait for 100ns;
Jump_flag<='0';
wait;


end process;
end Behavioral;
