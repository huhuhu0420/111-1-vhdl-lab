library ieee;
use ieee.std_logic_1164.all; 

package lab7_package is 
	component hex
		port (
			z, y, x, w: in std_logic;
			a, b, c, d, e, f, g: out std_logic
		);
	end component hex;
end lab7_package;