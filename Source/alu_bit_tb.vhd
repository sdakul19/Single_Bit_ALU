LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY alu_bit_tb IS
END alu_bit_tb;

ARCHITECTURE behavior OF alu_bit_tb IS 

    COMPONENT alu_bit
    PORT(
         x : IN  std_logic;
         y : IN  std_logic;
         cin : IN  std_logic;
         f : IN  std_logic_vector(2 downto 0);
         s : OUT  std_logic;
         cout : OUT  std_logic
        );
    END COMPONENT;
   
   signal x : std_logic := '0';
   signal y : std_logic := '0';
   signal cin : std_logic := '0';
   signal f : std_logic_vector(2 downto 0) := (others => '0');

   signal s : std_logic;
   signal cout : std_logic;

BEGIN 

   uut: alu_bit PORT MAP (
          x => x,
          y => y,
          cin => cin,
          f => f,
          s => s,
          cout => cout
        );

   stim_proc: process
   begin		
		-- Test Case for f=001
		f <= "001"; x <= '0'; y <= '0'; cin <= '0'; wait for 100 ns;
		f <= "001"; x <= '1'; y <= '1'; cin <= '1'; wait for 100 ns;
		-- Test Case for f=010
		f <= "010"; x <= '0'; y <= '0'; cin <= '0'; wait for 100 ns;
		f <= "010"; x <= '1'; y <= '1'; cin <= '1'; wait for 100 ns;

		-- Test Case for f=011
		f <= "011"; x <= '0'; y <= '0'; cin <= '0'; wait for 100 ns;
		f <= "011"; x <= '1'; y <= '1'; cin <= '1'; wait for 100 ns;

		-- Test Case for f=100
		f <= "100"; x <= '0'; y <= '1'; cin <= '0'; wait for 100 ns;
		f <= "100"; x <= '1'; y <= '1'; cin <= '1'; wait for 100 ns;

		-- Test Case for f=101
		f <= "101"; x <= '0'; y <= '1'; cin <= '0'; wait for 100 ns;
		f <= "101"; x <= '1'; y <= '1'; cin <= '1'; wait for 100 ns;

		--Test Case for f=110
		f <= "110"; x <= '1'; y <= '1'; cin <= '0'; wait for 100 ns;
		f <= "110"; x <= '1'; y <= '1'; cin <= '1'; wait for 100 ns;

		--Test Case for f=111
	
		f <= "111"; x <= '1'; y <= '1'; cin <= '0'; wait for 100 ns;
		f <= "111"; x <= '1'; y <= '1'; cin <= '1'; wait for 100 ns;
   end process;

END behavior;

USE work.all;
CONFIGURATION alu_bit_tb_cfg OF alu_bit_tb IS
	FOR behavior END FOR;
END CONFIGURATION;
