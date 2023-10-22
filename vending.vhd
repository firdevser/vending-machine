----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.04.2021 16:28:40
-- Design Name: 
-- Module Name: vending - Behavioral
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

entity vending is
   port(clk, rst, N, D: in std_logic;
        c, cr: out std_logic;
        number: out std_logic_vector(7 downto 0));
end vending;

architecture Behavioral of vending is
 type state_type is (st0,st5,st10,st15,st20,st25,st30,st35);
 signal state, next_state: state_type;

begin
state_register: process (clk, rst)
begin
 if (rst = '1') then
  state <= st0;
 elsif (clk'event and clk = '1') then 
  state <= next_state;
 end if;
end process;

out_states: process (N, D, state)
begin
 case state is
  when st0 =>
    c<='0'; cr<='0';
    number <= "00000000";
     if N = '1' then next_state <= st5;
      elsif D = '1' then next_state <= st10;
      else next_state <= st0;
     end if;
 
  when st5 =>
    c<='0'; cr<='0';   
    number <= "00000101";
     if N = '1' then next_state <= st10;
      elsif D = '1' then next_state <= st15;
      else next_state <= st5;
     end if;
     
  when st10 =>
    c<='0'; cr<='0';   
    number <= "00010000";
     if N = '1' then next_state <= st15;
      elsif D = '1' then next_state <= st20;
      else next_state <= st10;
     end if;
     
  when st15 =>
    c<='0'; cr<='0';   
    number <= "00010101";
     if N = '1' then next_state <= st20;
      elsif D = '1' then next_state <= st25;
      else next_state <= st15;
     end if;
     
  when st20 => 
    c<='0'; cr<='0';  
    number <= "00100000";
     if N = '1' then next_state <= st25;
      elsif D = '1' then next_state <= st30;
      else next_state <= st20;
     end if;
     
  when st25 => 
    c<='0'; cr<='0';  
    number <= "00100101";
     if N = '1' then next_state <= st30;
      elsif D = '1' then next_state <= st35;
      else next_state <= st25;
     end if;
     
  when st30 =>  
    c<='1'; cr<='0';
    number <= "00110000";
      next_state <= st0;
     
  when st35 =>  
   c<='1'; cr<='1'; 
    number <= "00110010";
      next_state <= st0;

end case;
end process;
end Behavioral;