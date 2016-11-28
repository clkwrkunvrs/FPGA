----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/08/2016 11:25:51 PM
-- Design Name: 
-- Module Name: ram_tb - Behavioral
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

entity ram_tb is
    GENERIC ( n : INTEGER := 4;
          m : INTEGER := 2);
end ram_tb;

architecture Behavioral of ram_tb is

component DUT
    port(Din : in STD_LOGIC_vector(n-1 downto 0);
           WEA  :in STD_LOGIC_VECTOR (m-1 downto 0);
           WE : in STD_LOGIC;
           REA : in STD_LOGIC_VECTOR(m-1 downto 0);
           Dout : out STD_LOGIC_vector(n-1 downto 0));
end component;
    signal WEA := '0';
    signal WE := '0';
    signal REA := '0';
    signal Din := '0';
    signal Dout := '0';

BEGIN
    uut : DUT PORT MAP (
        Din => Din,
        WE => WE,
        REA => REA,
        WEA => WEA,
        Dout => Dout);

--STIMULUS PROCESS
we_process : process
    begin
        WE <= '0';  wait for 5 ns;
        Din <= '0001';  --SET DATA INPUT
        WEA <= '0'; --SET WRITE ADDRESS
        REA <= '0'; wait for 5 ns; --SET READ ADDRESS TO SAME LOCATION WE JUST WROTE 
        WE <= '1';  wait for 5 ns; --SET WE TO HIGH AND CUE READ FROM RAM ON DOUT
        
        WE <= '0';  wait for 5 ns;
        Din <= '0010';
        WEA <= '1'; 
        REA <= '1'; wait for 5 ns; 
        WE <= '1'; wait for 5 ns;
        
        WE <= '0'; wait for 5 ns;
        Din <= '0011';
        WEA <= '0'; 
        REA <= '0'; wait for 5 ns; 
        WE <= '1'; wait for 5 ns;
        
        WE <= '0'; wait for 5 ns;
end process;

END

end Behavioral;
