----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2025 01:30:24 AM
-- Design Name: 
-- Module Name: Sim_AU - Behavioral
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

entity Sim_AU is
--  Port ( );
end Sim_AU;

architecture Behavioral of Sim_AU is
    Component AU
        Port ( A       : in STD_LOGIC_VECTOR(3 downto 0);
               RegSel  : in STD_LOGIC;
               Clk     : in STD_LOGIC; 
               S       : out STD_LOGIC_VECTOR(3 downto 0);
               Zero    : out STD_LOGIC;
               Carry   : out STD_LOGIC
       );
   end Component;
   
   signal a : std_logic_vector(3 downto 0):="0000";
   signal regsel, clk : std_logic:='0';
   signal zero, carry : std_logic:='0';
   signal s : std_logic_vector(3 downto 0):="0000";

begin
UUT : AU Port Map(
                 A => a,
                 RegSel => regsel,
                 Clk => clk,
                 s => s,
                 zero => zero,
                 Carry => carry
         );

    process begin
            clk <= not clk;
            wait for 5ns;
    end process;

-- index no.  230518C
-- in binary  11 1000 0100 0111 0110   
    process begin
            a <= "0110";
            regsel <= '0';
            wait for 100ns;
            
            a <= "0111";
            regsel <= '1';
            wait for 100ns;
                        
            a <= "0100";
            regsel <= '0';
            wait for 100ns;
            
            a <= "1000";
            regsel <= '1';
            wait for 100ns;
            
            a <= "0011";
            regsel <= '0';
            wait for 100ns;
            
            wait;
    end process;

end Behavioral;
