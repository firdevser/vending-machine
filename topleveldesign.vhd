----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.05.2021 16:32:03
-- Design Name: 
-- Module Name: topleveldesign - Behavioral
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

entity topleveldesign is
  Port ( rst, clk, N, D : in std_logic;
         c, cr : out std_logic;
         selectedAnode: out std_logic_vector(3 downto 0);
         displayS: out std_ulogic_vector(6 downto 0));
end topleveldesign;

architecture Behavioral of topleveldesign is
component buttonsync is
   port(CLK, RESET, X: in std_logic;
      Z: out std_logic);
end component;

component clkdiv is
Port (  clk_in : in  STD_LOGIC;
        reset  : in  STD_LOGIC;
        clk_out: out STD_LOGIC);
end component;
    
component vending is
port(clk, rst, N, D: in std_logic;
        c, cr: out std_logic;
        number: out std_logic_vector(7 downto 0));
end component;



begin


end Behavioral;
