----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/11/2025 02:27:29 PM
-- Design Name: 
-- Module Name: TB_Multiplier_2bit - Behavioral
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

entity TB_Multiplier_2bit is
--  Port ( );
end TB_Multiplier_2bit;

architecture Behavioral of TB_Multiplier_2bit is
component Multiplier_2bit
        Port (  A : in STD_LOGIC_VECTOR (1 downto 0);
                B : in STD_LOGIC_VECTOR (1 downto 0);
                Y : out STD_LOGIC_VECTOR (3 downto 0));
end Component;

signal A : std_logic_vector(1 downto 0);
signal B : std_logic_vector(1 downto 0);
signal Y : std_logic_vector(3 downto 0);

begin
UUT  : Multiplier_2bit Port Map(
                              A  =>  A,
                              B =>  B,
                              Y  =>  Y
);

process
begin
            A <= "00";
            B <= "00"; WAIT FOR 100ns;
            B <= "01"; WAIT FOR 100ns;
            B <= "10"; WAIT FOR 100ns;
            B <= "11"; WAIT FOR 100ns;
            
            A <= "01"; WAIT FOR 100ns;
            B <= "00"; WAIT FOR 100ns;
            B <= "01"; WAIT FOR 100ns;
            B <= "10"; WAIT FOR 100ns;
            B <= "11"; WAIT FOR 100ns;
            
            A <= "10"; WAIT FOR 100ns;
            B <= "00"; WAIT FOR 100ns;
            B <= "01"; WAIT FOR 100ns;
            B <= "10"; WAIT FOR 100ns;
            B <= "11"; WAIT FOR 100ns;
            
            A <= "11"; WAIT FOR 100ns;
            B <= "00"; WAIT FOR 100ns;
            B <= "01"; WAIT FOR 100ns;
            B <= "10"; WAIT FOR 100ns;
            B <= "11"; WAIT FOR 100ns;
            
            wait;



end process;

end Behavioral;
