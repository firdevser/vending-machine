----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.05.2021 14:46:57
-- Design Name: 
-- Module Name: clkdiv_tb - Behavioral
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

entity clkdiv_tb is
--  Port ( );
end clkdiv_tb;

architecture Behavioral of clkdiv_tb is
COMPONENT clkdiv
	PORT(
		clk_in : IN  std_logic;
		reset  : IN  std_logic;
		clk_out: OUT std_logic
	);
	END COMPONENT;
	
	-- Inputs
	signal clk_in  : std_logic := '0';
	signal reset   : std_logic := '0';
	-- Outputs
	signal clk_out : std_logic;
	constant clk_in_t : time := 20 ns;
	
begin
-- Instance of unit under test.
	uut: clkdiv PORT MAP (
		clk_in  => clk_in,
		reset   => reset,
		clk_out => clk_out
	);

	-- Clock definition.
	entrada_process :process
		begin
		clk_in <= '0';
		wait for clk_in_t / 2;
		clk_in <= '1';
		wait for clk_in_t / 2;
	end process;

	-- Processing.
	stimuli: process
	begin
		reset <= '1'; -- Initial conditions.
		wait for 10 ns;
		reset <= '0'; -- Down to work!
        wait;
	end process;

end Behavioral;
