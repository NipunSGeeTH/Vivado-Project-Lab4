----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
--Name : K.M.N.S.Kariyapperuma
--Index No : 230317J
-- Create Date: 03/06/2025 02:01:15 AM
-- Design Name: 
-- Module Name: TB_Mux_8_to_1 - Behavioral
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
------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_Mux_8_to_1 is
--  Port ( );
end TB_Mux_8_to_1;

architecture Behavioral of TB_Mux_8_to_1 is
component Mux_8_to_1
   Port ( S : in STD_LOGIC_VECTOR (2 downto 0); 
        D : in STD_LOGIC_VECTOR (7 downto 0); 
       EN : in STD_LOGIC; 
       Y : out STD_LOGIC); 
end component;
signal   S :  STD_LOGIC_VECTOR (2 downto 0); 
signal   D : STD_LOGIC_VECTOR (7 downto 0); 
signal   EN :STD_LOGIC; 
signal   Y : STD_LOGIC;



begin
UUT: Mux_8_to_1
    PORT MAP(
        s => s,
        EN => EN,
        D => D,
        Y => Y
    );
    process
    begin
        EN <= '1';
        S <= "000";
        d <= "00000000";
        
        --I(0) <= '0';
            
        wait for 100ns;
       S <= "001";
       d <= "00000001";
            
        wait for 100ns;
        S <= "010";
       d <= "00000010";
        
        wait for 100ns;
       S <= "011";
        d <= "00000100";
            wait for 100ns;
          S <= "100";
      d <= "00001000";
                    
      
        wait;        
        end process;


end Behavioral;
