library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Instruction_decoder is
    Port ( Instruction : in STD_LOGIC_VECTOR (11 downto 0);
           Reg_value : in STD_LOGIC_VECTOR (3 downto 0);
           Reg_enable : out STD_LOGIC_VECTOR (2 downto 0);
           Load_sel : out STD_LOGIC;
           imedi_val : out STD_LOGIC_VECTOR (3 downto 0);
           Reg_sel_1 : out STD_LOGIC_VECTOR (2 downto 0);
           Reg_sel_2 : out STD_LOGIC_VECTOR (2 downto 0);
           Sub_control : out STD_LOGIC;
           jump_flag : out STD_LOGIC;
           jump_Address : out STD_LOGIC_VECTOR (2 downto 0));
end Instruction_decoder;

architecture Behavioral of Instruction_decoder is
component Decoder_2_to_4
    Port ( I : in STD_LOGIC_VECTOR (1 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end component;
signal MOV,ADD,NEG,JZR,add_or_neg,add_or_neg_or_jzr:STD_LOGIC;

begin
Decoder_2_to_4_0:Decoder_2_to_4
    Port map(I=>Instruction(11 downto 10),
            Y(0)=>ADD,
            Y(1)=>NEG,
            Y(2)=>MOV,
            Y(3)=>JZR,
            EN=>'1');

add_or_neg<=ADD OR NEG;
add_or_neg_or_jzr<=add_or_neg OR JZR;
load_sel<=MOV;
Reg_enable<=Instruction(9 downto 7);
imedi_val<=Instruction(3 downto 0);
Reg_sel_1<=Instruction(9 downto 7) AND (add_or_neg_or_jzr,add_or_neg_or_jzr,add_or_neg_or_jzr);
Reg_sel_2<=Instruction(6 downto 4) AND (add_or_neg,add_or_neg,add_or_neg);
Sub_control<=NEG;
jump_Address<=Instruction(2 downto 0);
jump_flag<=JZR and not(Reg_value(0) or Reg_value(1) or Reg_value(2));

end Behavioral;
