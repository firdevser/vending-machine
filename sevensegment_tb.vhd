----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.05.2021 16:23:20
-- Design Name: 
-- Module Name: sevensegment_tb - Behavioral
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

entity sevensegment_tb is
--  Port ( );
end sevensegment_tb;

architecture Behavioral of sevensegment_tb is
component sevensegment
  port(i : in std_logic_vector(3 downto 0);
      o : out std_logic_vector(6 downto 0));
  end component;

  signal i: std_logic_vector(3 downto 0);
  signal o: std_logic_vector(6 downto 0);

begin
uut: sevensegment port map ( i => i,
                               o => o );
  stimulus: process
  begin
  
    for value in 0 to 15 loop
        i <= std_logic_vector(to_unsigned(value, i'length));
        wait for 1ns;
    end loop;

    wait;
  end process;
end Behavioral;
