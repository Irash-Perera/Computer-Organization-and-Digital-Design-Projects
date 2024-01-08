library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegBank is
    Port ( Res : in STD_LOGIC;
           RegEN : in STD_LOGIC_VECTOR (2 downto 0);
           Clk : in STD_LOGIC;
           Data_In : in STD_LOGIC_VECTOR (3 downto 0);
           R0 : out STD_LOGIC_VECTOR (3 downto 0);
           R1 : out STD_LOGIC_VECTOR (3 downto 0);
           R2 : out STD_LOGIC_VECTOR (3 downto 0);
           R3 : out STD_LOGIC_VECTOR (3 downto 0);
           R4 : out STD_LOGIC_VECTOR (3 downto 0);
           R5 : out STD_LOGIC_VECTOR (3 downto 0);
           R6 : out STD_LOGIC_VECTOR (3 downto 0);
           R7 : out STD_LOGIC_VECTOR (3 downto 0));
end RegBank;

architecture Behavioral of RegBank is

component Decorder_3_8
Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;
component Reg
Port (  EN : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Res : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (3 downto 0);
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal Dec_out:STD_LOGIC_VECTOR (7 downto 0);
signal Data_out:STD_LOGIC_VECTOR (3 downto 0);
signal Clk0:std_logic;
begin

Dec_3_8: Decorder_3_8
port map(
I=>RegEN,
EN=>'1',
Y=>Dec_out
);

Reg_0:Reg
port map(
Clk=>Clk0,
Res=>Res,
EN=>'1',
D=>"0000",
Q=>R0
);

Reg_1:Reg
port map(
Clk=>Clk0,
Res=>Res,
EN=>Dec_out(1),
D=>Data_in,
Q=>R1
);

Reg_2:Reg
port map(
Clk=>Clk0,
Res=>Res,
EN=>Dec_out(2),
D=>Data_in,
Q=>R2
);

Reg_3:Reg
port map(
Clk=>Clk0,
Res=>Res,
EN=>Dec_out(3),
D=>Data_in,
Q=>R3
);

Reg_4:Reg
port map(
Clk=>Clk0,
Res=>Res,
EN=>Dec_out(4),
D=>Data_in,
Q=>R4
);

Reg_5:Reg
port map(
Clk=>Clk0,
Res=>Res,
EN=>Dec_out(5),
D=>Data_in,
Q=>R5
);

Reg_6:Reg
port map(
Clk=>Clk0,
Res=>Res,
EN=>Dec_out(6),
D=>Data_in,
Q=>R6
);

Reg_7:Reg
port map(
Clk=>Clk0,
Res=>Res,
EN=>Dec_out(7),
D=>Data_in,
Q=>R7
);


Clk0<=Clk;




end Behavioral;
