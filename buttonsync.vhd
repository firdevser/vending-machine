----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.05.2021 13:55:48
-- Design Name: 
-- Module Name: buttonsync - Behavioral
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

entity buttonsync is
port (CLK, RESET, X: in std_logic;
      Z: out std_logic);
end buttonsync;

architecture Behavioral of buttonsync is
type state_type is (A, B, C);
signal state, next_state: state_type;

begin
state_register: process (CLK, RESET)
begin
    if (RESET = '1') then
        state <= A;
    elsif (CLK'event and CLK = '1') then
        state <= next_state;
    end if;
end process;

X_and_next_state_functions: process (X, state)
begin
  --if (CLK'event and CLK = '1') then
    case state is
        when A =>
            Z <= '0';
            if X = '1' then 
            next_state <= B;
            else 
            next_state <= A;
            end if;
        when B =>
            Z <= '1';
            if X = '1' then 
            next_state <= C;
            else 
            next_state <= A;
            end if;
        when C =>
            Z <= '0';
            if X = '1' then 
            next_state <= C;
            else 
            next_state <= A;
            end if;
    end case;
end process;

end Behavioral;
