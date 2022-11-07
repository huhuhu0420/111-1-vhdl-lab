library ieee;
use ieee.std_logic_1164.all; 

package lab5_package is 
	component dff
		PORT
		(
			data, clock, clearn    : IN STD_LOGIC;
			q_out                  : OUT STD_LOGIC
		);
	end component dff;
	component mux
		port (
			w0,w1,s: in std_logic;
			o: out std_logic
		);
	end component mux;
end lab5_package;