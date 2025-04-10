----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2025 02:39:54 PM
-- Design Name: 
-- Module Name: Mux_8_to_1 - Behavioral
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

entity Mux_8_to_1 is
    Port ( S : in STD_LOGIC_VECTOR(2 downto 0);
           D : in STD_LOGIC_VECTOR(7 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC);
end Mux_8_to_1;

architecture Behavioral of Mux_8_to_1 is
Component Decoder_3_to_8 
    port(   I  : in STD_LOGIC_VECTOR(2 DOWNTO 0);
            EN : in STD_LOGIC;
            Y  : out STD_LOGIC_VECTOR(7 DOWNTO 0));
end Component;

signal decoder_out : std_logic_vector(7 downto 0);

begin
decoder3to8 : Decoder_3_to_8 port map(
                                       I => S,
                                       Y => decoder_out,
                                       EN => EN
);

    Y <= (D(0) AND decoder_out(0)) or 
            (D(1) AND decoder_out(1)) or 
            (D(2) AND decoder_out(2)) or 
            (D(3) AND decoder_out(3)) or
            (D(4) AND decoder_out(4)) or
            (D(5) AND decoder_out(5)) or
            (D(6) AND decoder_out(6)) or
            (D(7) AND decoder_out(7)) ;



end Behavioral;
