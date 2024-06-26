library ieee;
use ieee.std_logic_1164.all;

entity full_adder_4bit is
	port(	a, b : in std_logic_vector(3 downto 0);
			   s : out std_logic_vector(4 downto 0));
end full_adder_4bit;

architecture structure of full_adder_4bit is
component full_adder
	port (
			  a_in, b_in, c_in : in std_logic;
			  s_out, c_out : out std_logic
		 );
	end component;
	
	signal c : std_logic_vector(4 downto 1);

begin
	U0 : full_adder port map(a(0), b(0), '0' , s(0), c(1) );
	U1 : full_adder port map(a(1), b(1), c(1), s(1), c(2) );
	U2 : full_adder port map(a(2), b(2), c(2), s(2), c(3) );
	U3 : full_adder port map(a(3), b(3), c(3), s(3), c(4) );
	s(4) <= c(4);
end structure;