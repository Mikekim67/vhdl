library ieee;
use ieee.std_logic_1164.all;

entity tri_state is
	port(a : in std_logic;
		  c : in std_logic;
		  f : out std_logic);
end tri_state;

architecture behavior of tri_state is 
begin 
	f<= 'Z' when (c = '1')
			  else a;
end behavior;			 