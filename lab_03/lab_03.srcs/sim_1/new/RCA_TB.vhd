----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2025 01:49:13 PM
-- Design Name: 
-- Module Name: RCA_TB - Behavioral
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

entity RCA_TB is
--  Port ( );
end RCA_TB;

architecture Behavioral of RCA_TB is
    
    COMPONENT Lab03_RCA_4 
        PORT ( C_in, A0, A1, A2, A3, B0, B1, B2, B3 : in STD_LOGIC;
               SUM0, SUM1, SUM2, SUM3, C_out : out STD_LOGIC);
    END COMPONENT ;
    
    signal C_in, A0, A1, A2, A3, B0, B1, B2, B3 : std_logic;
    signal SUM0, SUM1, SUM2, SUM3, C_out : std_logic;

begin

UUT: Lab03_RCA_4 PORT MAP(

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
                   C_out => C_out
);
                                    
process
begin
            -- index number 230518 = 1110  0001011110  0110
            -- first num A = 0110
            -- second num B = 1110 

            C_in <= '0';
            A0 <= '0';  
            A1 <= '1';
            A2 <= '1';
            A3 <= '0';

            
            B0 <= '0';
            B1 <= '1';
            B2 <= '1';
            B3 <= '1';
            
            wait;
            
end process;


end Behavioral;
