library ieee;
use ieee.std_logic_1164.all;

entity tb_full_adder_2bit is
	port( S : out std_logic_vector(2 downto 0);
			A_out, B_out : out std_logic_vector(1 downto 0));
end tb_full_adder_2bit;

architecture sim of tb_full_adder_2bit is

component full_adder_2bit
	port(			  a, b : in std_logic_vector(1 downto 0);
						  s : out std_logic_vector(2 downto 0);
			a_out, b_out : out std_logic_vector(1 downto 0)
		  );
end component;

	signal A,B : std_logic_vector(1 downto 0);

begin
	A<="01", "11" after 20 ns, "11" after 40 ns;
	B<="11", "11" after 20 ns, "01" after 40 ns;
	
	U0 : full_adder_2bit port map(A, B, S, A_out, B_out);
end;	