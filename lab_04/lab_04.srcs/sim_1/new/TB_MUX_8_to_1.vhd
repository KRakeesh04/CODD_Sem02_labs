----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2025 07:01:20 PM
-- Design Name: 
-- Module Name: TB_MUX_8_to_1 - Behavioral
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

entity TB_MUX_8_to_1 is
--  Port ( );
end TB_MUX_8_to_1;

architecture Behavioral of TB_MUX_8_to_1 is
Component Mux_8_to_1 
    port(  S  : in STD_LOGIC_VECTOR(2 downto 0);
           D  : in STD_LOGIC_VECTOR(7 downto 0);
           EN : in STD_LOGIC;
           Y  : out STD_LOGIC);
end Component;

signal S  :  STD_LOGIC_VECTOR(2 downto 0);
signal D  :  STD_LOGIC_VECTOR(7 downto 0);
signal EN, Y  :  STD_LOGIC;

begin
UUT: Mux_8_to_1 port map(
                          S  =>  S,
                          D  =>  D,
                          EN =>  EN,
                          Y  =>  Y  );
-- index number 230518
-- 11 1000 0100 0111 0110

process
begin
            EN <= '1';
            D <= "01110110";
            S <= "000"; WAIT FOR 100ns;
            S <= "001"; WAIT FOR 100ns;
            S <= "010"; WAIT FOR 100ns;
            S <= "011"; WAIT FOR 100ns;
            S <= "100"; WAIT FOR 100ns;
            S <= "101"; WAIT FOR 100ns;
            S <= "110"; WAIT FOR 100ns;
            S <= "111"; WAIT FOR 100ns;
            
            EN <= '0';
            S <= "000"; WAIT FOR 100ns;
            S <= "001"; WAIT FOR 100ns;
            S <= "010"; WAIT FOR 100ns;
            S <= "011"; WAIT FOR 100ns;
            S <= "100"; WAIT FOR 100ns;
            S <= "101"; WAIT FOR 100ns;
            S <= "110"; WAIT FOR 100ns;
            S <= "111"; WAIT FOR 100ns;
            
            wait;
          
end process;

end Behavioral;
