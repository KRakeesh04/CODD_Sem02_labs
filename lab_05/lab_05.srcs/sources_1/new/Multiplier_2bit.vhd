----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/11/2025 02:04:25 PM
-- Design Name: 
-- Module Name: Multiplier_2bit - Behavioral
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

entity Multiplier_2bit is
    Port (  A : in STD_LOGIC_VECTOR (1 downto 0);
            B : in STD_LOGIC_VECTOR (1 downto 0);
            Y : out STD_LOGIC_VECTOR (3 downto 0));
end Multiplier_2bit;

architecture Behavioral of Multiplier_2bit is
Component Lab03_FA
    Port (     A      : in STD_LOGIC;
               B      : in STD_LOGIC;
               C      : in STD_LOGIC;
               SUM    : out STD_LOGIC;
               CARRY  : out STD_LOGIC);
end Component;

signal a0b0, a1b0, a0b1, a1b1 : std_logic ;
signal c1, s1, c2, s2 : std_logic;

begin

        a0b0 <= a(0) AND b(0) ;
        a1b0 <= a(1) AND b(0) ;
        a0b1 <= a(0) AND b(1) ;
        a1b1 <= a(1) AND b(1) ;
        
        
        FA_0 : lab03_FA 
        port map(
                  A => a1b0,
                  B => a0b1,
                  C => '0',
                  SUM => s1,
                  CARRY => c1
       );
       
       FA_1 : lab03_FA 
       port map(
                 A => c1,
                 B => a1b1,
                 C => '0',
                 SUM => s2,
                 CARRY => c2
      );

      
      Y(0) <= a0b0 ;
      Y(1) <= s1;
      Y(2) <= s2;
      Y(3) <= c2;
       
       

end Behavioral;
