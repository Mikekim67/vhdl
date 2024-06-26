library ieee;
use ieee.std_logic_1164.all;

entity full_adder_mux is 
    port (
        a_in, b_in, c_in : in std_logic;
        s_out, c_out : out std_logic
    );
end full_adder_mux;

architecture arc of full_adder_mux is 
	 component mux_2x1
		  port(
				d0, d1, s : in std_logic; 
						  z : out std_logic
		  );
    end component;

    signal s0 : std_logic;

begin
    s0 <= a_in xor b_in;
	 s_out <= c_in xor s0;
	 U0 : mux_2x1 port map(d0=>b_in, d1=>c_in, s=>s0, z=>c_out);
	 

end arc;
