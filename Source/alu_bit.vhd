library IEEE;
use IEEE.STD_LOGIC_1164.ALL;




entity alu_bit is 
	port(x, y, cin	: IN std_logic;
		f	: IN std_logic_vector(2 downto 0);
		s, cout : OUT std_logic);
end alu_bit;

architecture behavior of alu_bit is
	component adder port(
		a, b, cin: IN std_logic;
			f: IN std_logic_vector(2 downto 0);
		s, cout: OUT std_logic);
	end component;

	component subtractor port(
		a, b, bin : IN std_logic;
			f : IN std_logic_vector(2 downto 0);
		d, bout : OUT std_logic);
	end component;
	
	signal add_s, add_c, sub_d, sub_b : std_logic;	
	begin
		add : adder port map(a => x, b => y, cin => cin, f => f, s => add_s, cout => add_c);
		sub : subtractor port map(a => x, b => y, bin => cin, f => f, d => sub_d, bout => sub_b);

		process(x, y, cin, f, add_s, add_c, sub_d, sub_b)
		begin
			case f is
				when "000" =>
					s <= '0';
					cout <= '0';
				when "001" =>
					s <= x;
				when "010" =>
					s <= y;
					cout <= '1';
				when "011" =>
					s <= cin;
					cout <= x;
				when "100" =>
					s <= x OR y;
					cout <= x;
				when "101" =>
					s <= x AND y;
					cout <= x;
				when "110" =>
					s <= add_s;
					cout <= add_c;
				when "111" =>
					s <= sub_d;
					cout <= sub_b;
				when others =>
					
			end case;
		end process;
end behavior;
use work.all;
configuration alu_bit_cfg of alu_bit is
	for behavior end for;
end configuration;
