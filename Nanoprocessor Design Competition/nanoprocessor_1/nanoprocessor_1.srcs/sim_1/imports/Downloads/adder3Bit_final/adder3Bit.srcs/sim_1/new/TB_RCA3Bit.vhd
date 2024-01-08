
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_RCA3Bit is
--  Port ( );
end TB_RCA3Bit;

architecture Behavioral of TB_RCA3Bit is
COMPONENT RCA3Bit
    Port ( 
      A : in STD_LOGIC_VECTOR (2 downto 0);
      S : OUT STD_LOGIC_VECTOR (2 downto 0));
      
END COMPONENT;
signal A,S  : STD_LOGIC_VECTOR (2 downto 0);
begin

UUT : RCA3Bit
PORT MAP(
    A => A,
    S => S
);

process
begin
--Index num: 210471F : 110 011 011 000 100 111
--           210434V : 110 011 011 000 000 010

    A<="110";
    wait for 100ns;

    A<="011";
    wait for 100ns;
    
    A<="000";
    wait for 100ns;
    
    A<="100";
    wait for 100ns;
    
    A<="111";
    wait;
            
end process;


end Behavioral;