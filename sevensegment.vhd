----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.05.2021 16:10:44
-- Design Name: 
-- Module Name: sevensegment - Behavioral
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

entity sevensegment is
port(i : in std_logic_vector(3 downto 0);
     o : out std_logic_vector(6 downto 0));
end sevensegment;

architecture Behavioral of sevensegment is

begin
o(0) <= (i(3) and i(2)) or (i(3) and i(1)) or (i(2) and (not i(1) and (not i(0)))) or ((not i(3)) and (not i(2)) and (not i(1)) and i(0));
o(1) <= (i(3) and i(2)) or (i(2) and (not i(1)) and i(0)) or (i(2) and i(1) and (not i(0))) or (i(3) and i(1));
o(2) <= (i(3) and i(2)) or (i(3) and i(1)) or ((not i(2)) and i(1) and (not i(0)));
o(3) <= (i(3) and i(2)) or (i(2) and (not i(1)) and (not i(0))) or (i(2) and i(1) and i(0)) or (i(3) and i(1)) or ((not i(3)) and (not i(2)) and (not i(1)) and i(0));
o(4) <= (i(3) and i(2)) or i(0) or (i(2) and (not i(1))) or (i(3) and i(1) and (not i(0)));
o(5) <= (i(3) and i(2)) or (i(1) and i(0)) or ((not i(2)) and i(1)) or ((not i(3)) and (not i(2)) and i(0));
o(6) <= (i(3) and i(2)) or (i(3) and i(1)) or (i(2) and i(1) and i(0)) or ((not i(3)) and (not i(2)) and (not i(1)));

end Behavioral;
