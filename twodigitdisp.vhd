----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.05.2021 16:02:42
-- Design Name: 
-- Module Name: twodigitdisp - Behavioral
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

entity twodigitdisp is
port(i : in std_logic_vector(7 downto 0);
     o : out std_logic_vector(13 downto 0);
     clk : in std_logic
    );
end twodigitdisp;

architecture Behavioral of twodigitdisp is
component sevensegment is
		port(i : in std_logic_vector(3 downto 0);
             o : out std_logic_vector(6 downto 0));
end component;
	
begin
u1: SevenSegment port map (i => i(7 downto 4), o => o(13 downto 7));
u2: SevenSegment port map (i => i(3 downto 0), o => o(6 downto 0));

end Behavioral;
