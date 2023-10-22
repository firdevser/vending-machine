----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.05.2021 01:39:45
-- Design Name: 
-- Module Name: vending_tb - Behavioral
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

entity vending_tb is
--  Port ( );
end vending_tb;

architecture Behavioral of vending_tb is

component vending is 
    port( 
          clk, rst, N, D: in std_logic;
          c, cr: out std_logic;
          number: out std_logic_vector(7 downto 0));
end component;

signal clk, rst, N, D : std_logic := '0'; --inputs
signal c, cr : std_logic;   --outputs
signal number : std_logic_vector; --output
constant T: time := 10ms; --time

begin
UUT: vending port map (
                      clk => clk, rst=>rst, N=>N, D=>D, c=>c, cr=>cr, number=>number);
                      
tb1 : process
begin
        clk <= '0';
        wait for T/2;
        clk <= '1';
        wait for T/2;
      end process;

--tb2: process
--begin
--rst <= '1', '0' after T/2;
--end process;

N <= '0', '0' after T, '0' after 2*T, '0' after 3*T,'0' after 4*T, '1' after 5*T, '0' after 6*T, '0' after 7*T, '0' after 8*T,'0' after 9*T, '1' after 10*T, '1' after 11*T,'1' after 12*T,'1' after 13*T,'1' after 14*T,'1' after 15*T;
D <= '0', '1' after T, '1' after 2*T, '1' after 3*T,'0' after 4*T, '0' after 5*T, '1' after 6*T, '1' after 7*T, '1' after 8*T,'0' after 9*T, '0' after 10*T, '0' after 11*T,'0' after 12*T,'0' after 13*T,'0' after 14*T,'0' after 15*T;
end Behavioral;