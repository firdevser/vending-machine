----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.05.2021 14:12:18
-- Design Name: 
-- Module Name: buttonsync_tb - Behavioral
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

entity buttonsync_tb is
--  Port ( );
end buttonsync_tb;

architecture Behavioral of buttonsync_tb is
component buttonsync is
port (CLK, RESET, X: in std_logic;
      Z: out std_logic);
end component;

signal CLK, RESET, X : std_logic := '0';
signal Z : std_logic;
constant clk_period : time := 20 ns; 

begin
uut: buttonsync port map (  CLK=>CLK,
                             RESET=>RESET,
                             X=>X,
                             Z=>Z);

clock: process 
  begin 
  CLK <= '0';
  wait for clk_period/2;
  CLK <= '1';
  wait for clk_period/2;
end process;

data: process
  begin
  
  RESET <= '1';
  X <= '0';
  wait for 15 ns; 
  
  RESET <= '0';
  X <= '0';
  wait for 20 ns; 

  RESET <= '0';
  X <= '1';
  wait for 80 ns;
  
  RESET <= '0';
  X <= '0';  
  wait for 40 ns;
  
  RESET <= '0';
  X <= '1';  
  wait for 20 ns;
  
  RESET <= '0';
  X <= '0';  
  wait; 
end process;

end Behavioral;

