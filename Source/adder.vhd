library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder is
	port(a, b, cin : IN std_logic;
		     f : IN std_logic_vector(2 downto 0);
		s, cout: OUT std_logic);
end adder;

architecture behavior of adder is
begin
	process(a, b, cin, f)
	begin
		if f = "110" then	
			s <= a xor b xor cin;
			cout <= (a and b) or (a and cin) or (b and cin);
		end if;
	end process;
end behavior;
