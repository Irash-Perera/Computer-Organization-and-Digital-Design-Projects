library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC is
    Port ( PC_in : in STD_LOGIC_VECTOR (2 downto 0);
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           PC_out : out STD_LOGIC_VECTOR (2 downto 0));
end PC;

architecture Behavioral of PC is
component D_FF_0
Port ( D : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qbar : out STD_LOGIC);
end component;
begin
D_FF0:D_FF_0
port map(
D=>PC_in(0),
Res=>Res,
Clk=>Clk,
Q=>PC_out(0)
);

D_FF1:D_FF_0
port map(
D=>PC_in(1),
Res=>Res,
Clk=>Clk,
Q=>PC_out(1)
);

D_FF2:D_FF_0
port map(
D=>PC_in(2),
Res=>Res,
Clk=>Clk,
Q=>PC_out(2)
);

end Behavioral;
