library ieee;
use ieee.std_logic_1164.all;

entity tb_full_adder is 
	port(S_out, C_out : out std_logic);
end tb_full_adder;


architecture behavior of tb_full_adder is

component full_adder 
	port (a_in, b_in, c_in : in std_logic;
			s_out, c_out: out std_logic);
end component;

--!!!! UNCOMMENT
	component half_adder
		port(a, b : in std_logic; 
			  s, c : out std_logic);
	end component;

	component or_gate 
		port(a, b : in std_logic; 
			  c : out std_logic);
	end component;

	signal s0, c0, c1 : std_logic;


signal A_in : std_logic := '0'; 
signal B_in : std_logic := '0';
signal C_in : std_logic := '0';

constant C_in_period : time := 40 ns;

begin 
	C_in_process : process
		begin while true loop
			C_in <= '0'; wait for C_in_period/2;
			C_in <= '1'; wait for C_in_period/2;
		end loop;
	end process C_in_process;

	A_in_process : process
		begin while true loop
			A_in <= '0'; wait for C_in_period/8;
			A_in <= '1'; wait for C_in_period/8;
		end loop;
	end process A_in_process;

	B_in_process : process
		begin while true loop
			B_in <= '0'; wait for C_in_period/4;
			B_in <= '1'; wait for C_in_period/4;
		end loop;
	end process B_in_process;
	
		U0 : half_adder port map(a=>a_in, b=>b_in, s=>s0, c=>c0);
		U1 : half_adder port map(a=>s0, b=>c_in, s=>s_out, c=>c1);
		U2 : or_gate port map(a=>c0, b=>c1, c=>c_out); 
	
		U3: full_adder port map(a_in=>A_in, b_in=>B_in, c_in=>C_in, s_out=>S_out, c_out=>C_out);	

end behavior;