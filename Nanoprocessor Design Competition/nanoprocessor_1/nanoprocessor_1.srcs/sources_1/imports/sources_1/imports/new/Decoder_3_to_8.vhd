library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Decoder_3_to_8 is
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
          EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end Decoder_3_to_8;
architecture Behavioral of Decoder_3_to_8 is
component Decoder_2_to_4
        port (I: in std_logic_vector(1 downto 0);
              EN: in std_logic;
              Y: out std_logic_vector(3 downto 0));
end component;
    SIGNAL Y0, Y1 : std_logic_vector (3 downto 0);
begin
    Decoder_2_to_4_0 : Decoder_2_to_4
        port map (I(1 downto 0) => I(1 downto 0),
                  EN => EN,
                  Y(3 downto 0) => Y0(3 downto 0));
    Decoder_2_to_4_1 : Decoder_2_to_4
        port map (I(1 downto 0) => I(1 downto 0),
                  EN => EN,
                  Y(3 downto 0) => Y1(3 downto 0));
    
    Y(0) <= (Y0(0) AND (NOT I(2)));
    Y(1) <= (Y0(1) AND (NOT I(2)));
    Y(2) <= (Y0(2) AND (NOT I(2)));
    Y(3) <= (Y0(3) AND (NOT I(2)));

    Y(4) <= Y1(0) AND I(2);
    Y(5) <= Y1(1) AND I(2);
    Y(6) <= Y1(2) AND I(2);
    Y(7) <= Y1(3) AND I(2);

end Behavioral;