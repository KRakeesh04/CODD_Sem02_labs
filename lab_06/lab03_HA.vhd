----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/18/2025 04:51:13 PM
-- Design Name: 
-- Module Name: lab_03 - Behavioral
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

entity lab03_HA is
    Port ( A     : in STD_LOGIC;
           B     : in STD_LOGIC;
           SUM   : out STD_LOGIC;
           CARRY : out STD_LOGIC);
end lab03_HA;

architecture Behavioral of lab03_HA is

begin

        SUM <= A XOR B ;
        
        CARRY <= A AND B;

end Behavioral;
