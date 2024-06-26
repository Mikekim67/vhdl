library ieee;
use ieee.std_logic_1164.all;

entity tb_mux_2x1 is 
	port(Z : out std_logic);
end tb_mux_2x1;

architecture behavior of tb_mux_2x1 is

component mux_2x1
	port(d0, d1, s : in std_logic; 
					 z : out std_logic);
end component;

signal D0_in : std_logic := '0'; 
signal D1_in : std_logic := '0';
signal S_in : std_logic := '0';

constant S_period : time := 40 ns;

begin 
	S_process : process
		begin while true loop
			S_in <= '0'; wait for S_period/2;
			S_in <= '1'; wait for S_period/2;
		end loop;
	end process S_process;

	D0_process : process
		begin while true loop
			D0_in <= '0'; wait for S_period/8;
			D0_in <= '1'; wait for S_period/8;
		end loop;
	end process D0_process;

	D1_process : process
		begin while true loop
			D1_in <= '0'; wait for S_period/4;
			D1_in <= '1'; wait for S_period/4;
		end loop;
	end process D1_process;
	
		U0: mux_2x1 port map(d0=>D0_in, d1=>D1_in, s=>S_in, z=>Z);	

end behavior;