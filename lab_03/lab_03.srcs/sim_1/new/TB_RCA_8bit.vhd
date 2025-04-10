----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2025 10:52:28 PM
-- Design Name: 
-- Module Name: TB_RCA_8bit - Behavioral
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

entity TB_RCA_8bit is
--  Port ( );
end TB_RCA_8bit;

architecture Behavioral of TB_RCA_8bit is
    COMPONENT RCA_8bits 
        PORT ( C_in, A0, A1, A2, A3, A4, A5, A6, A7, B0, B1, B2, B3, B4, B5, B6, B7 : in STD_LOGIC;
               SUM0, SUM1, SUM2, SUM3, SUM4, SUM5, SUM6, SUM7, C_out : out STD_LOGIC);
    END COMPONENT ;
    
    signal C_in, A0, A1, A2, A3, A4, A5, A6, A7, B0, B1, B2, B3, B4, B5, B6, B7 : std_logic;
    signal SUM0, SUM1, SUM2, SUM3, SUM4, SUM5, SUM6, SUM7, C_out : std_logic;

begin
UUT : RCA_8bits PORT MAP(

                    C_in => C_in,
                    
                    A0 => A0,
                    A1 => A1,
                    A2 => A2,
                    A3 => A3,
                    A4 => A4,
                    A5 => A5,
                    A6 => A6,
                    A7 => A7,
                    B0 => B0,
                    B1 => B1,
                    B2 => B2,
                    B3 => B3,
                    B4 => B4,
                    B5 => B5,
                    B6 => B6,
                    B7 => B7,
                    
                    SUM0 => SUM0,
                    SUM1 => SUM1,
                    SUM2 => SUM2,
                    SUM3 => SUM3,
                    SUM4 => SUM4,
                    SUM5 => SUM5,
                    SUM6 => SUM6,
                    SUM7 => SUM7,
                    C_out => C_out
);

process
begin
            -- index number 230518 = 1110 0001   01   1110 0110
            -- first num A = 1110 0110
            -- second num B = 1110 0001 
            
            C_in <= '0';
            A0 <= '0';
            A1 <= '1';
            A2 <= '1';
            A3 <= '0';
            A4 <= '0';
            A5 <= '1';
            A6 <= '1';
            A7 <= '1';
            
            B0 <= '1';
            B1 <= '0';
            B2 <= '0';
            B3 <= '0';
            B4 <= '0';
            B5 <= '1';
            B6 <= '1';
            B7 <= '1';
            
            wait;
            
end process;

end Behavioral;
