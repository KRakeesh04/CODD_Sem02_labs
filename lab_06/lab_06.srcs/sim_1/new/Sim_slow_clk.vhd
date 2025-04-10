----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2025 01:32:00 AM
-- Design Name: 
-- Module Name: Sim_slow_clk - Behavioral
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

entity Sim_slow_clk is
--  Port ( );
end Sim_slow_clk;

architecture Behavioral of Sim_slow_clk is
    Component Slow_Clk
        Port(
             Clk_in  : in STD_LOGIC;
             Clk_out : out STD_LOGIC
        );
    end Component;
    
    signal Clk_in : STD_LOGIC := '0' ;
    signal Clk_out : STD_LOGIC ;
    
begin
UUT : Slow_Clk Port Map(
                        Clk_in => Clk_in,
                        Clk_out => Clk_out
               );

process
begin

        for i in 0 to 100000000 loop
            clk_in <= not clk_in;
            wait for 10ns;
        end loop;
        wait;

end process;

end Behavioral;
