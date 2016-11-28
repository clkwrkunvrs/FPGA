----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/08/2016 07:15:15 PM
-- Design Name: 
-- Module Name: RAM - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM is
    GENERIC ( n : INTEGER := 4;
              m : INTEGER := 2);
    
    Port ( Din : in STD_LOGIC_vector(n-1 downto 0);
           WEA  :in STD_LOGIC_VECTOR (m-1 downto 0);
           WE : in STD_LOGIC;
           REA : in STD_LOGIC_VECTOR(m-1 downto 0);
           Dout : out STD_LOGIC_vector(n-1 downto 0));
end RAM;

architecture Behavioral of RAM is
   type registerFile is array(2**(M)-1 downto 0) of std_logic_vector(n-1 downto 0);
   signal registers : registerFile;
begin
   reg : process (WE) is
   begin
    if rising_edge(WE) then
        registers(to_integer(unsigned(WEA))) <= Din;
    end if;
  
    end process;
   Dout <= registers(to_integer(unsigned(REA)));   
    
end Behavioral;
