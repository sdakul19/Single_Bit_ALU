library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity subtractor is
	port(A, B, Bin: IN std_logic;
		     f : IN std_logic_vector(2 downto 0);
		D, Bout: OUT std_logic);
end subtractor;

architecture behavior of subtractor is
begin
	process(A, B, Bin, f)
	begin
		if f = "111" then
			D <= (A xor B) xor Bin;
			Bout <= ((not A) and (B or Bin)) or (B and Bin);
		end if;
	end process;
end behavior;


