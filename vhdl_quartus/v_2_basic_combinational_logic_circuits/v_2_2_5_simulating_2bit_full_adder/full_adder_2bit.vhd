library ieee;
use ieee.std_logic_1164.all;

entity full_adder_2bit is 
	port(			  a, b : in std_logic_vector(1 downto 0);
						  s : out std_logic_vector(2 downto 0);
			a_out, b_out : out std_logic_vector(1 downto 0)
		  );
end full_adder_2bit;

architecture structure of full_adder_2bit is
component full_adder
	port (
			  a_in, b_in, c_in : in std_logic;
			  s_out, c_out : out std_logic
		 );
	end component;
	
	signal c : std_logic_vector(2 downto 1);

begin
	U0 : full_adder port map(a(0), b(0), '0' , s(0), c(1) );
	U1 : full_adder port map(a(1), b(1), c(1), s(1), c(2) );
	s(2) <= c(2);
	a_out<= a;
	b_out<= b;
end structure;