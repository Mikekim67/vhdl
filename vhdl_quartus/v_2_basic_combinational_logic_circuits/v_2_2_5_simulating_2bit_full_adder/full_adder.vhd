library ieee;
use ieee.std_logic_1164.all;

entity full_adder is 
    port (
        a_in, b_in, c_in : in std_logic;
        s_out, c_out : out std_logic
    );
end full_adder;

architecture arc of full_adder is 

    component half_adder
        port(
            a, b : in std_logic; 
            s, c : out std_logic
        );
    end component;

    signal s0, c0, c1 : std_logic;

begin
    U0 : half_adder port map(a => a_in, b => b_in, s => s0, c => c0);
    U1 : half_adder port map(a => s0, b => c_in, s => s_out, c => c1);
	 c_out <= c0 or c1;

end arc;
