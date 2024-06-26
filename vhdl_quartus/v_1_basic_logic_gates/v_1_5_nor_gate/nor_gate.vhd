library ieee;
use ieee.std_logic_1164.all;

entity nor_gate is
	port(a,b : in std_logic	 ;
			 c : out std_logic);
end nor_gate;

architecture arc of nor_gate is
begin 
	c<= a nor b;
end arc;
