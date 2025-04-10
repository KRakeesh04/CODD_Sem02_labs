----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2025 06:08:55 PM
-- Design Name: 
-- Module Name: TB_Decoder_2_to_4 - Behavioral
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

entity TB_Decoder_2_to_4 is
--  Port ( );
end TB_Decoder_2_to_4;

architecture Behavioral of TB_Decoder_2_to_4 is
Component Decoder_2_to_4
        port(
              I : in std_logic_vector(1 downto 0);
              EN : in std_logic;
              Y : out std_logic_vector(3 downto 0));
end Component;

--signal I0, I1, EN, Y0, Y1, Y2, Y3 : std_logic ;
signal  I    :  std_logic_vector(1 downto 0) := (others => '0');
signal  EN   :  std_logic := '0';
signal  Y    :  std_logic_vector(3 downto 0);

begin

UUT  : Decoder_2_to_4 Port Map(
                                I  =>  I,
                                EN =>  EN,
                                Y  =>  Y
);

process
begin
            I <= "00"; WAIT FOR 100ns;
            I <= "01"; WAIT FOR 100ns;
            I <= "10"; WAIT FOR 100ns;
            I <= "11"; WAIT FOR 100ns;
            
            EN <= '1';
            I <= "00"; WAIT FOR 100ns;
            I <= "01"; WAIT FOR 100ns;
            I <= "10"; WAIT FOR 100ns;
            I <= "11"; WAIT FOR 100ns;

            
            
            WAIT;
            
end process;


end Behavioral;
