----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/19/2025 10:35:27 PM
-- Design Name: 
-- Module Name: Lab03_FA - Behavioral
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

entity Lab03_FA is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           SUM : out STD_LOGIC;
           CARRY : out STD_LOGIC);
end Lab03_FA;


architecture Behavioral of Lab03_FA is
    component lab03_HA
    port (
            A: in std_logic;
            B: in std_logic;
            SUM: out std_logic;
            CARRY: out std_logic);
    end component;
    
    
SIGNAL HA0_SUM, HA0_CARRY, HA1_SUM, HA1_CARRY : std_logic;

begin
    HA_0 : lab03_HA
    port map (
                A => A,
                B => B,
                SUM => HA0_SUM,
                CARRY => HA0_CARRY);
                
    HA_1 : lab03_HA
    port map (
                A => HA0_SUM,
                B => C,
                SUM => HA1_SUM,     -- HA0_SUM XOR C
                CARRY => HA1_CARRY);    -- HA0_CARRY AND C 

    SUM <= HA1_SUM ;
    CARRY <= HA1_CARRY OR HA0_CARRY ;
    


end Behavioral;
