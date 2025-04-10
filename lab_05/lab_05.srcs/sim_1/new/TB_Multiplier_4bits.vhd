----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/12/2025 07:42:33 PM
-- Design Name: 
-- Module Name: TB_Multiplier_4bits - Behavioral
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

entity TB_Multiplier_4bits is
--  Port ( );
end TB_Multiplier_4bits;

architecture Behavioral of TB_Multiplier_4bits is
component Multiplier_4bits
        Port (  A : in STD_LOGIC_VECTOR (3 downto 0);
                B : in STD_LOGIC_VECTOR (3 downto 0);
                Y : out STD_LOGIC_VECTOR (7 downto 0));
end Component;

signal A : std_logic_vector(3 downto 0);
signal B : std_logic_vector(3 downto 0);
signal Y : std_logic_vector(7 downto 0);


begin
UUT  : Multiplier_4bits 
       Port Map(
                 A  =>  A,
                 B  =>  B,
                 Y  =>  Y
);

process
begin
            A <= "1010";                    --random value
            B <= "0000"; WAIT FOR 100ns;
            B <= "0001"; WAIT FOR 100ns;
            B <= "0010"; WAIT FOR 100ns;
            B <= "0011"; WAIT FOR 100ns;
            B <= "0100"; WAIT FOR 100ns;
            B <= "0101"; WAIT FOR 100ns;
            B <= "0110"; WAIT FOR 100ns;
            B <= "0111"; WAIT FOR 100ns;
            B <= "1000"; WAIT FOR 100ns;
            B <= "1001"; WAIT FOR 100ns;
            B <= "1010"; WAIT FOR 100ns;
            B <= "1011"; WAIT FOR 100ns;
            B <= "1100"; WAIT FOR 100ns;
            B <= "1101"; WAIT FOR 100ns;
            B <= "1110"; WAIT FOR 100ns;
            B <= "1111"; WAIT FOR 100ns;
            
            A <= "1001"; WAIT FOR 100ns;    --random value
            B <= "0000"; WAIT FOR 100ns;
            B <= "0001"; WAIT FOR 100ns;
            B <= "0010"; WAIT FOR 100ns;
            B <= "0011"; WAIT FOR 100ns;
            B <= "0100"; WAIT FOR 100ns;
            B <= "0101"; WAIT FOR 100ns;
            B <= "0110"; WAIT FOR 100ns;
            B <= "0111"; WAIT FOR 100ns;
            B <= "1000"; WAIT FOR 100ns;
            B <= "1001"; WAIT FOR 100ns;
            B <= "1010"; WAIT FOR 100ns;
            B <= "1011"; WAIT FOR 100ns;
            B <= "1100"; WAIT FOR 100ns;
            B <= "1101"; WAIT FOR 100ns;
            B <= "1110"; WAIT FOR 100ns;
            B <= "1111"; WAIT FOR 100ns;
            
            A <= "1110"; WAIT FOR 100ns;    --random value
            B <= "0000"; WAIT FOR 100ns;
            B <= "0001"; WAIT FOR 100ns;
            B <= "0010"; WAIT FOR 100ns;
            B <= "0011"; WAIT FOR 100ns;
            B <= "0100"; WAIT FOR 100ns;
            B <= "0101"; WAIT FOR 100ns;
            B <= "0110"; WAIT FOR 100ns;
            B <= "0111"; WAIT FOR 100ns;
            B <= "1000"; WAIT FOR 100ns;
            B <= "1001"; WAIT FOR 100ns;
            B <= "1010"; WAIT FOR 100ns;
            B <= "1011"; WAIT FOR 100ns;
            B <= "1100"; WAIT FOR 100ns;
            B <= "1101"; WAIT FOR 100ns;
            B <= "1110"; WAIT FOR 100ns;
            B <= "1111"; WAIT FOR 100ns;
            
            wait;

end process;

end Behavioral;
