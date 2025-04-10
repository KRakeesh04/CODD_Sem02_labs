----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/25/2025 02:34:34 PM
-- Design Name: 
-- Module Name: AU - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AU is
    Port ( A       : in STD_LOGIC_VECTOR(3 downto 0);
           RegSel  : in STD_LOGIC;
           Clk     : in STD_LOGIC; 
           S       : out STD_LOGIC_VECTOR(3 downto 0);
           Zero    : out STD_LOGIC;
           Carry   : out STD_LOGIC);
end AU;

architecture Behavioral of AU is
Component Lab03_RCA_4
    Port(
            C_in : in STD_LOGIC;
                
            A0 : in STD_LOGIC;
            A1 : in STD_LOGIC;
            A2 : in STD_LOGIC;
            A3 : in STD_LOGIC;
            B0 : in STD_LOGIC;
            B1 : in STD_LOGIC;
            B2 : in STD_LOGIC;
            B3 : in STD_LOGIC;
                
            C_out : out STD_LOGIC;
            SUM0 : out STD_LOGIC;
            SUM1 : out STD_LOGIC;
            SUM2 : out STD_LOGIC;
            SUM3 : out STD_LOGIC);
end Component;

Component Reg
    Port(
           D   : in STD_LOGIC_VECTOR(3 downto 0);
           En  : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q   : out STD_LOGIC_VECTOR(3 downto 0));
end Component;

component Slow_Clk
    Port ( 
           Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC );
end component;

signal slow_clock,I0 : std_logic;
signal en_A, en_B, C_out : std_logic;
SIGNAL Y0 : std_logic_vector(1 DOWNTO 0);
signal Q_regA, Q_regB, S_RCA_4 : std_logic_vector(3 downto 0);

begin

Slow_Clk_0 : Slow_Clk
port map( 
         Clk_in => Clk,
         Clk_out => slow_clock 
);

Reg_A : Reg
Port map(
          D => A,
          En => en_A,
          Clk => slow_clock,
          Q => Q_regA
);

Reg_B : Reg
Port map(
          D => A,
          En => en_B,
          Clk => slow_clock,
          Q => Q_regB
);


RCA_4bits : Lab03_RCA_4
Port map(
          C_in => '0',
          A0 => Q_regA(0),
          A1 => Q_regA(1),
          A2 => Q_regA(2),
          A3 => Q_regA(3),
          B0 => Q_regB(0),
          B1 => Q_regB(1),
          B2 => Q_regB(2),
          B3 => Q_regB(3),
          SUM0 => S_RCA_4(0),
          SUM1 => S_RCA_4(1),
          SUM2 => S_RCA_4(2),
          SUM3 => S_RCA_4(3),
          C_out => C_out
);


          En_A <= RegSel;
          En_B <= NOT(RegSel);
          S <= S_RCA_4 ;
          Carry <= C_out;
          Zero <= NOT( S_RCA_4(0) OR S_RCA_4(1) OR S_RCA_4(2) OR S_RCA_4(3) OR C_out );

end Behavioral;
