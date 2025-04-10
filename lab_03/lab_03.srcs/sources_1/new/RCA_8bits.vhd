----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2025 10:22:57 PM
-- Design Name: 
-- Module Name: RCA_8bits - Behavioral
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

entity RCA_8bits is
    Port ( A0 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           A3 : in STD_LOGIC;
           A4 : in STD_LOGIC;
           A5 : in STD_LOGIC;
           A6 : in STD_LOGIC;
           A7 : in STD_LOGIC;
           
           C_in : in STD_LOGIC;
           
           B0 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           B3 : in STD_LOGIC;
           B4 : in STD_LOGIC;
           B5 : in STD_LOGIC;
           B6 : in STD_LOGIC;
           B7 : in STD_LOGIC;
           
           SUM0 : out STD_LOGIC;
           SUM1 : out STD_LOGIC;
           SUM2 : out STD_LOGIC;
           SUM3 : out STD_LOGIC;
           SUM4 : out STD_LOGIC;
           SUM5 : out STD_LOGIC;
           SUM6 : out STD_LOGIC;
           SUM7 : out STD_LOGIC;
           C_out : out STD_LOGIC);
end RCA_8bits;

architecture Behavioral of RCA_8bits is
Component Lab03_RCA_4
Port (
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

signal RCA_4_carry0 : std_logic;
begin
            RCA_4bit_0 : Lab03_RCA_4
            port map(
                        C_in => C_in,
                        A0 => A0,
                        A1 => A1,
                        A2 => A2,
                        A3 => A3,
                        B0 => B0,
                        B1 => B1,
                        B2 => B2,
                        B3 => B3,
                        SUM0 => SUM0,
                        SUM1 => SUM1,
                        SUM2 => SUM2,
                        SUM3 => SUM3,
                        C_out => RCA_4_carry0 );
                        
            RCA_4bit_1 : Lab03_RCA_4
            port map(
                        C_in => RCA_4_carry0,
                        A0 => A4,
                        A1 => A5,
                        A2 => A6,
                        A3 => A7,
                        B0 => B4,
                        B1 => B5,
                        B2 => B6,
                        B3 => B7,
                        SUM0 => SUM4,
                        SUM1 => SUM5,
                        SUM2 => SUM6,
                        SUM3 => SUM7,
                        C_out => C_out );


end Behavioral;
