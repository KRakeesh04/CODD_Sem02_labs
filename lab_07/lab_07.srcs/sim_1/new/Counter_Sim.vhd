----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/01/2025 02:56:55 PM
-- Design Name: 
-- Module Name: Counter_Sim - Behavioral
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

entity Counter_Sim is
--  Port ( );
end Counter_Sim;

architecture Behavioral of Counter_Sim is
    Component Counter
        Port (
              Dir : in STD_LOGIC;
              Res : in STD_LOGIC;
              Clk : in STD_LOGIC;
              Q   : out STD_LOGIC_VECTOR (2 downto 0)
        );
    end Component;
    
    signal dir, res : STD_LOGIC;
    signal clk : STD_LOGIC:= '0';
    signal q  : STD_LOGIC_VECTOR (2 downto 0);
    
begin
UUT : Counter  Port Map(
                        Dir => dir,
                        Res => res,
                        Clk => clk, 
                        Q => q
               );
    process begin
            res <= '1'; wait for 100ns;
            res <= '0';
            dir <= '0';
            wait;
    end process;
    
    process begin
        clk <= not (clk);
        wait for 5ns;
    end process;
    
end Behavioral;
