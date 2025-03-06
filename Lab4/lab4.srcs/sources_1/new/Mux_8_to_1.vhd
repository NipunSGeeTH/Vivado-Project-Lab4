----------------------------------------------------------------------------------
-- Company: 
--Name : K.M.N.S.Kariyapperuma
--Index No : 230317J
-- Engineer: 
-- 
-- Create Date: 03/05/2025 12:53:36 AM
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
Port ( S : in STD_LOGIC_VECTOR (2 downto 0); 
        D : in STD_LOGIC_VECTOR (7 downto 0); 
       EN : in STD_LOGIC; 
       Y : out STD_LOGIC); 

--  Port ( );
end Mux_8_to_1;

 

architecture Behavioral of Mux_8_to_1 is

component Decoder_3_to_8 is 
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0); 
           EN : in STD_LOGIC; 
           Y : out STD_LOGIC_VECTOR (7 downto 0)); 
end component;
 signal Y0 ,Y1: STD_LOGIC_VECTOR (7 downto 0);
begin

Decoder_3_to_81: Decoder_3_to_8    port map( 
        I => s, 
        EN => en, 
        Y => Y0 ); 
        
Y1(0) <= y0(0) and d(0);
Y1(1) <= y0(1) and d(1);
Y1(2) <= y0(2) and d(2);
Y1(3) <= y0(3) and d(3);
Y1(4) <= y0(4) and d(4);
Y1(5) <= y0(5) and d(5);
Y1(6) <= y0(6) and d(6);
Y1(7) <= y0(7) and d(7);

y<= y1(0)or y1(1) or  y1(2) or  y1(3) or  y1(4) or  y1(5) or  y1(6) or  y1(7) ;

end Behavioral;
