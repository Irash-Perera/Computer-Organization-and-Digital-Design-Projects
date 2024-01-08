library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Reg is
    Port ( EN : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Res : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (3 downto 0);
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end Reg;

architecture Behavioral of Reg is
component D_FF_Reg
Port ( D : in STD_LOGIC;
           Res : in STD_LOGIC;
           EN : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qbar : out STD_LOGIC);
end component;
signal S: STD_LOGIC_VECTOR (3 downto 0);
begin
D_FF0:D_FF_Reg
port map(
D=>D(0),
Res=>Res,
EN=>EN,
Clk=>Clk,
Q=>S(0)
);

D_FF1:D_FF_Reg
port map(
D=>D(1),
EN=>EN,
Res=>Res,
Clk=>Clk,
Q=>S(1)
);

D_FF2:D_FF_Reg
port map(
D=>D(2),
EN=>EN,
Res=>Res,
Clk=>Clk,
Q=>S(2)
);

D_FF3:D_FF_Reg
port map(
D=>D(3),
EN=>EN,
Res=>Res,
Clk=>Clk,
Q=>S(3)
);

Q<=S;

end Behavioral;
