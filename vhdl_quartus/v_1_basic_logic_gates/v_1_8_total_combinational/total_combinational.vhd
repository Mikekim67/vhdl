library ieee;
use ieee.std_logic_1164.all;

entity total_combinational is 
	port(A, B, C : in std_logic; 
			F1, F2 : out std_logic);
end total_combinational;

architecture design of total_combinational is
begin
	F1 <= (not A and not B and C) or (not A and B and not C) 
	      or (A and not B and not C) or ( A and B and C);
	F2 <= (B and C) or (A and C) or (A and B);
end design;