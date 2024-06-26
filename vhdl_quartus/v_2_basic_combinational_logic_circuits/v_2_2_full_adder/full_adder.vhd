library ieee;
use ieee.std_logic_1164.all;
-- full_adder entity
entity full_adder is 
port (a_in, b_in, c_in : in std_logic;
		s_out, c_out: out std_logic);
end full_adder;

architecture arc of full_adder is 

component half_adder
	port(a, b : in std_logic; 
		  s, c : out std_logic);
end component;

component or_gate 
	port(a, b : in std_logic; 
		  c : out std_logic);
end component;

signal s0, c0, c1 : std_logic;

begin
	U0 : half_adder port map(a=>a_in, b=>b_in, s=>s0, c=>c0);
	U1 : half_adder port map(a=>s0, b=>c_in, s=>s_out, c=>c1);
	U2 : or_gate port map(a=>c0, b=>c1, c=>c_out); 
end arc;

-- half_adder entity
library ieee;
use ieee.std_logic_1164.all;

entity half_adder is
	port(a, b : in std_logic; 
		  s, c : out std_logic);
end half_adder;

architecture arc of half_adder is
begin
	s <= a xor b;
	c <= a and b;
end arc;		 

-- or_gate entity
library ieee;
use ieee.std_logic_1164.all;
entity or_gate is
	port(a,b : in std_logic  ;
			 c : out std_logic);
end or_gate;

architecture arc of or_gate is
begin
	c<=a or b;
end arc;

