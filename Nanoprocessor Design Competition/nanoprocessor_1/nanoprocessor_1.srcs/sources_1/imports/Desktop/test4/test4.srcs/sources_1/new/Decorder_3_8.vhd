library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Decorder_3_8 is
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end Decorder_3_8;

architecture Behavioral of Decorder_3_8 is
component Decorder_2_4
Port ( I : in STD_LOGIC_VECTOR (1 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (3 downto 0));

end component;
signal EN0,EN1: std_logic;
begin
Decorder0: Decorder_2_4
port map(
    I(0)=>I(0),
    I(1)=>I(1),
    EN=>EN0,
    Y=>Y(3 downto 0)
);


Decorder1: Decorder_2_4
port map(
    I(0)=>I(0),
    I(1)=>I(1),
    EN=>EN1,
    Y=>Y(7 downto 4)
);
EN0<=NOT(I(2)) AND EN;
EN1<=I(2) AND EN;
end Behavioral;
