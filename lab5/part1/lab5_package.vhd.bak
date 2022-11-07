library ieee;
use ieee.std_logic_1164.all; 

package lab4_package is 
	component fulladd
		port (
        cin, x, y: in std_logic;
        s, cout: out std_logic
		);
	end component fulladd;
	component hex
		port (
			z, y, x, w: in std_logic;
			a, b, c, d, e, f, g: out std_logic
		);
	end component hex;
	component mux
		port (
			w0,w1,s: in std_logic;
			o: out std_logic
		);
	end component mux;
	component oneBitAlu
		port (
			a, b, less, carryin: in std_logic;
			opcode: in std_logic_vector(3 downto 0);
			result, carryout: out std_logic
		);
	end component oneBitAlu;
end lab4_package;