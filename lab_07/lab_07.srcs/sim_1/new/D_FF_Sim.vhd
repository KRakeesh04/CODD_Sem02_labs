----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/01/2025 01:58:40 PM
-- Design Name: 
-- Module Name: D_FF_Sim - Behavioral
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

entity D_FF_Sim is
--  Port ( );
end D_FF_Sim;

architecture Behavioral of D_FF_Sim is
Component D_FF
    Port(
         D, Res, Clk  : in STD_LOGIC; 
         Q, Qbar      : out STD_LOGIC
    );
end Component;

signal D, Res    : STD_LOGIC; 
signal  Q, Qbar  : STD_LOGIC;
signal Clk  : STD_LOGIC := '0' ;

begin
UUT : D_FF Port map(
                    D => D,
                    Res => Res,
                    Clk => Clk,
                    Q => Q,
                    Qbar => Qbar
            );

process
begin

        Clk<=NOT(Clk);
        wait for 20 ns; -- Half clock period
        
end process;


process
begin

        D <= '0';
        Res <= '1';
        wait for 50ns;
        
        D <= '0';
        Res <= '0';
        wait for 50ns;
        
        D <= '1';
        wait for 50ns;
        
        D <= '0';
        wait;
        
end process;

end Behavioral;
