
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity nanoprocessor is
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Zero : out STD_LOGIC;
           Overflow : out STD_LOGIC;
           Seven_seg : out STD_LOGIC_VECTOR (6 downto 0);
           LED : out STD_LOGIC_VECTOR (3 downto 0);
           Selector : out STD_LOGIC_VECTOR (3 downto 0));
end nanoprocessor;

architecture Behavioral of nanoprocessor is
component MUX_8_to_1
port(R0 : in STD_LOGIC_VECTOR (3 downto 0);
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
 
 component RegBank
 port(      Res : in STD_LOGIC;
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
end component;
component RCA --4 bit add sub unit
port( A : in STD_LOGIC_VECTOR(3 downto 0);
           B : in STD_LOGIC_VECTOR(3 downto 0);
           operator : in STD_LOGIC;
           S : OUT STD_LOGIC_VECTOR(3 downto 0);
           overflow : out STD_LOGIC;
           Zero : out STD_LOGIC);
end component;

component PC
Port ( PC_in : in STD_LOGIC_VECTOR (2 downto 0);
       Res : in STD_LOGIC;
       Clk : in STD_LOGIC;
       PC_out : out STD_LOGIC_VECTOR (2 downto 0));
end component;
component RCA3Bit
Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
       S : out STD_LOGIC_VECTOR (2 downto 0));
end component;
component MUX_2_way_3bit
Port ( Jump_Address : in STD_LOGIC_VECTOR (2 downto 0);
           Inc_Address : in STD_LOGIC_VECTOR (2 downto 0);
           Jump_flag : in STD_LOGIC;
           Address : out STD_LOGIC_VECTOR(2 downto 0));
end component;
component MUX_2_way_4bit
Port ( Load_Sel : in STD_LOGIC;
           Imedi_Val : in STD_LOGIC_VECTOR(3 downto 0);
           Result : in STD_LOGIC_VECTOR (3 downto 0);
           O : out STD_LOGIC_VECTOR(3 downto 0));
 end component;
component Display
Port ( R7_val : in STD_LOGIC_VECTOR (3 downto 0);
       Seven_seg_out : out STD_LOGIC_VECTOR (6 downto 0));

end component;
component instruction_decoder
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
end component;
component ProgramROM
Port ( Mem_select : in STD_LOGIC_VECTOR (2 downto 0);
           Ins_bus : out STD_LOGIC_VECTOR (11 downto 0));
end component;
component Slow_Clk
Port ( Clk_in : in STD_LOGIC;
       Clk_out : out STD_LOGIC);
end component;

signal Mem_select,Reg_enable,Reg_sel_1,Reg_sel_2,jump_Address,Inc_Address, Next_Adress: std_logic_vector(2 downto 0);
signal  Ins_bus : STD_LOGIC_VECTOR (11 downto 0);
signal MUX_1_out,MUX_2_out,imedi_val,add_sub_res,En_reg_val: STD_LOGIC_VECTOR (3 downto 0);
signal R0,R1,R2,R3,R4,R5,R6,R7: STD_LOGIC_VECTOR(3 downto 0);
signal Load_sel,Sub_control,jump_flag,Clk_out :  STD_LOGIC;
signal Seven_seg_out:STD_LOGIC_VECTOR(6 downto 0);

begin 
ProgramROM_0: ProgramROM
    port map(
        Mem_select => Mem_select,
        Ins_bus => Ins_bus
    );
instruction_decoder_0 : instruction_decoder
    port map (
        Instruction => Ins_bus,
        Reg_value => MUX_1_out,
        Reg_enable => Reg_enable,
        Load_sel => Load_sel,
        imedi_val => imedi_val,
        Reg_sel_1 => Reg_sel_1,
        Reg_sel_2 => Reg_sel_2,
        Sub_control => Sub_control,
        jump_flag => jump_flag,
        jump_Address => jump_Address);
MUX_2_way_3bit_0 : MUX_2_way_3bit
    port map(
        jump_Address => jump_Address,
        Inc_Address => Inc_Address,
        Jump_flag => jump_flag,
        Address => Next_Adress
    );   
MUX_2_way_4bit_0 : MUX_2_way_4bit
    port map(
        Load_Sel => Load_Sel,
        Imedi_Val => imedi_val,
        Result => add_sub_res,
        O => En_reg_val
    );
MUX_8_to_1_1: MUX_8_to_1
    port map (
        R0 => R0,
        R1 => R1, 
        R2 => R2, 
        R3 => R3, 
        R4 => R4, 
        R5 => R5, 
        R6 => R6, 
        R7 => R7,
        S => Reg_sel_1,
        O => MUX_1_out);
        
MUX_8_to_1_2: MUX_8_to_1
            port map (
                R0 => R0,
                R1 => R1, 
                R2 => R2, 
                R3 => R3, 
                R4 => R4, 
                R5 => R5, 
                R6 => R6, 
                R7 => R7,
                S => Reg_sel_2,
                O => MUX_2_out);
Display_0: Display
    port map(
        R7_val => R7,
        Seven_seg_out => Seven_seg_out);
Add_Sub : RCA
    port map(
        A =>MUX_2_out ,
        B =>MUX_1_out ,
        operator => Sub_control,
        S => add_sub_res,
        overflow => Overflow,
        Zero => Zero );
RCA3Bit_0 : RCA3Bit
    port map(
        A => Mem_select,
        S => Inc_Address );
RegBank_0 : RegBank
    port map (
       Res => Reset,
       RegEN =>  Reg_enable,
       Clk =>Clk_out,
       Data_In => En_reg_val,
       R0 => R0,
       R1 => R1, 
       R2 => R2, 
       R3 => R3, 
       R4 => R4, 
       R5 => R5, 
       R6 => R6, 
       R7 => R7);
PC_0 : PC
    port map (
        PC_in => Next_Adress,
        Res =>  Reset,
        Clk => Clk_out,
        PC_out => Mem_select);

Slow_Clk_0 : Slow_Clk
    port map(
        Clk_in => Clk,
        Clk_out => Clk_out);
        
    LED <= R7;
    Selector <= "1110";
    Seven_seg <= Seven_seg_out;
    
end Behavioral;
