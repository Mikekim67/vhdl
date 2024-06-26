library ieee;
use ieee.std_logic_1164.all ;

entity tb_tri_state is
	port (F : out std_logic) ;
end  tb_tri_state ;

architecture simulation of  tb_tri_state is

component  tri_state 
	port(a : in std_logic;
		  c : in std_logic;
		  f : out std_logic);
end component;

signal a,c :  std_logic;
begin	
	A <= '0', '1' after 20 ns, '0' after 40 ns;
	C <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 30 ns, '0' after 40 ns;
	
	U0 : tri_state port map (a=>A, c=>C, f=>open);	
end ;
