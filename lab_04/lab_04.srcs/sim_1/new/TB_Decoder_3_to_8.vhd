----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2025 02:22:01 PM
-- Design Name: 
-- Module Name: TB_Decoder_3_to_8 - Behavioral
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

entity TB_Decoder_3_to_8 is
--  Port ( );
end TB_Decoder_3_to_8;

architecture Behavioral of TB_Decoder_3_to_8 is
Component Decoder_3_to_8
        port(
              I : in std_logic_vector(2 downto 0);
              EN : in std_logic;
              Y : out std_logic_vector(7 downto 0));
end Component;

signal  I    :  std_logic_vector(2 downto 0) := (others => '0');
signal  EN   :  std_logic := '0';
signal  Y    :  std_logic_vector(7 downto 0);

begin
UUT : Decoder_3_to_8 PORT MAP(
                               I  => I,
                               EN => EN,
                               Y  => Y
);
                             
process
begin
            I <= "001"; WAIT FOR 100ns;
            I <= "010"; WAIT FOR 100ns;
            I <= "011"; WAIT FOR 100ns;
            I <= "100"; WAIT FOR 100ns;
            I <= "101"; WAIT FOR 100ns;
            I <= "110"; WAIT FOR 100ns;
            I <= "111"; WAIT FOR 100ns;
            
            EN <= '1';
            I <= "001"; WAIT FOR 100ns;
            I <= "010"; WAIT FOR 100ns;
            I <= "011"; WAIT FOR 100ns;
            I <= "100"; WAIT FOR 100ns;
            I <= "101"; WAIT FOR 100ns;
            I <= "110"; WAIT FOR 100ns;
            I <= "111"; WAIT FOR 100ns;
            
            wait;
            
end process;

end Behavioral;
