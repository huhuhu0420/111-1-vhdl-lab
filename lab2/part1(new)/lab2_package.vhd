library ieee;
use ieee.std_logic_1164.all; 

package lab2_package is 
	component fulladd
		port (
        cin, x, y: in std_logic;
        s, cout: out std_logic
		);
	end component fulladd;
	component hex
		port (
			x, w, y, z: in std_logic;
			a, b, c, d, e, f, g: out std_logic
		);
	end component hex;
end lab2_package;