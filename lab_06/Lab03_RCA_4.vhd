----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2025 02:53:57 PM
-- Design Name: 
-- Module Name: Lab03_RCA_4 - Behavioral
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

entity Lab03_RCA_4 is
    Port (  C_in : in STD_LOGIC;
            
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
end Lab03_RCA_4;


architecture Behavioral of Lab03_RCA_4 is
Component Lab03_FA
Port(
           A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           SUM : out STD_LOGIC;
           CARRY : out STD_LOGIC);
end Component;

signal FA0_CARRY,FA1_CARRY, FA2_CARRY, FA3_CARRY : std_logic;
signal FA0_SUM,FA1_SUM, FA2_SUM, FA3_SUM : std_logic;


begin
            FA_0 : Lab03_FA
            port map(
                      A => A0,
                      B => B0,
                      C => C_in,
                      SUM => FA0_SUM,
                      CARRY => FA0_CARRY );
            
            FA_1 : Lab03_FA
            port map(
                      A => A1,
                      B => B1,
                      C => FA0_CARRY,
                      SUM => FA1_SUM,
                      CARRY => FA1_CARRY );
            
            FA_2 : Lab03_FA
            port map(
                      A => A2,
                      B => B2,
                      C => FA1_CARRY,
                      SUM => FA2_SUM,
                      CARRY => FA2_CARRY );

            FA_3 : Lab03_FA
            port map(
                      A => A3,
                      B => B3,
                      C => FA2_CARRY,
                      SUM => FA3_SUM,
                      CARRY => FA3_CARRY );
                      
                      
            SUM0 <= FA0_SUM;
            SUM1 <= FA1_SUM;
            SUM2 <= FA2_SUM;
            SUM3 <= FA3_SUM;
            C_out <= FA3_CARRY;


end Behavioral;
