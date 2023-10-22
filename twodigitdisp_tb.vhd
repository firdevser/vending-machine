----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.05.2021 16:13:05
-- Design Name: 
-- Module Name: twodigitdisp_tb - Behavioral
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
use IEEE.Numeric_Std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity twodigitdisp_tb is
--  Port ( );
end twodigitdisp_tb;

architecture Behavioral of twodigitdisp_tb is
component twodigitdisp
  port(i : in std_logic_vector(7 downto 0);
      o : out std_logic_vector(13 downto 0));
  end component;
  
  signal i: std_logic_vector(7 downto 0);
  signal o: std_logic_vector(13 downto 0);
  
begin

  uut: twodigitdisp port map ( i => i,
                               o => o );

  stimulus: process
  begin
  
    for value in 0 to 255 loop
        i <= std_logic_vector(TO_UNSIGNED(value, i'length));
        wait for 1ns;
    end loop;
    wait;
  end process;
end Behavioral;
