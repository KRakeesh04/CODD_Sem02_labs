library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lab_02 is
    Port ( g0 : in STD_LOGIC;
           g1 : in STD_LOGIC;
           g2 : in STD_LOGIC;
           g : out STD_LOGIC;
           a : out STD_LOGIC;
           r : out STD_LOGIC);
end Lab_02;

architecture Behavioral of Lab_02 is
Signal CG0 : std_logic ;
Signal CG1 : std_logic ;
Signal CG2 : std_logic ;


begin

    CG0 <= NOT g0;
    CG1 <= NOT g1;
    CG2 <= NOT g2;
        
    g <= g0 AND g1 AND g2;
    a <= (g0 AND g1 AND CG2) OR (g0 AND g2 AND CG1) OR (g2 AND g1 AND CG0);
    r <= (g0 AND CG1 AND CG2) OR (g1 AND CG0 AND CG2) OR (g2 AND CG0 AND CG1) OR (CG0 AND CG1 AND CG2);
    
    
    
end Behavioral;
