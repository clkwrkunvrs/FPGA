library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Debounce is
	generic ( N : integer := 8);
	-- Generic to set size of counter. If P=period to stable switch, and f=clock frequency
	--then N=ceil(log2(P*f-2))
	Port (
			PB : in STD_LOGIC;		--Signal to debounce
			CLK : in STD_LOGIC;		--Clock
			PBdb : out STD_LOGIC := '0');	--debounced signal
end Debounce;

architecture Behavioral of Debounce is
	signal Count: std_logic_vector (N downto 0);	--N + 1 bit counter, MSB is the carry out
	signal F1,F2,clear: std_logic :='0';	--Internal flipflops F1 and F2, and the internal clear signal
begin
	clear<=F1 xor F2;	--The clear line for the counter. If F1 != F2, then the input is changing and counter is cleared
	SYNCH: process(CLK)
		begin
		if(rising_edge(CLK)) then		--On Rising Edge
			F1<=PB;	--Pass input to first flipflop
			F2<=F1;	--Pass first flip-flop to second
			
			if (clear = '1') then	--If the clear line is high, clear the Count
				Count<=(others=>'0');
			elsif ( Count(N) = '0' ) then	--Else if Count MSB is low, increment Count
				Count<=Count+1;
			else	--Lastly, if clear is low, and the MSB of count is 1, pass flip-flop 2 to output
				PBdb<=F2;
			end if;
		end if;
	end process SYNCH;
end Behavioral;
