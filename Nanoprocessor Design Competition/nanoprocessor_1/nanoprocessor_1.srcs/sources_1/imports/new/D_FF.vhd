library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity D_FF_Reg is
    Port ( D : in STD_LOGIC;
           Res : in STD_LOGIC;
           EN : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qbar : out STD_LOGIC);
end D_FF_Reg;

architecture Behavioral of D_FF_Reg is

begin
process(Clk) begin
    if(rising_edge(Clk)) then
        if Res='1' then
            Q<='0';
            Qbar<='1';
        else if EN = '1' then
            Q<=D;
            Qbar<=not(D);
        end if;
        end if;
    end if;
end process;




end Behavioral;
