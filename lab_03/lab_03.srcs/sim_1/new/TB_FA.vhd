----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2025 02:03:15 PM
-- Design Name: 
-- Module Name: TB_FA - Behavioral
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

entity TB_FA is
--  Port ( );
end TB_FA;

architecture Behavioral of TB_FA is
COMPONENT Lab03_FA 
    PORT ( A, B, C : in STD_LOGIC;
           SUM, CARRY : out STD_LOGIC);
END COMPONENT ;

Signal A,B,C,SUM,CARRY : std_logic;

begin
UUT : Lab03_FA PORT MAP(
            A => A,
            B => B,
            C => C,
            SUM => SUM,
            CARRY => CARRY
);

process
begin
        A <= '0';
        B <= '0';
        C <= '0';
        
        WAIT FOR 100ns;
        C <= '1';
        
        WAIT FOR 100ns;
        B <= '1';
        C <= '0';
        
        WAIT FOR 100ns;
        C <= '1';
        
        WAIT FOR 100ns;
        A <= '1';
        B <= '0';
        C <= '0';
        
        WAIT FOR 100ns;
        C <= '1';
        
        WAIT FOR 100ns;
        B <= '1';
        C <= '0';
        
        WAIT FOR 100ns;
        C <= '1'; 
        
        WAIT;       

end process;

end Behavioral;
