library ieee;
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity lab1 is
	port (
		z, y, x, w: in std_logic;
		z1, y1, x1, w1: in std_logic;
		z2, y2, x2, w2: in std_logic;
		a, b, c, d, e, f, g: out std_logic;
		a1, b1, c1, d1, e1, f1, g1: out std_logic;
		a2, b2, c2, d2, e2, f2, g2: out std_logic
	);
end lab1;

architecture dosth of lab1 is
	signal arr: std_logic_vector(6 downto 0);
	signal arr1: std_logic_vector(6 downto 0);
	signal arr2: std_logic_vector(6 downto 0);
	signal input: std_logic_vector(3 downto 0);
	signal tmp: integer;
begin
	a <= (not w and not x and not y and z)	or 
			(not w and  x and not y and not z)or
			(w and not x and y and z )or
			(w and x and not y and not z )or
			(w and x and not y and z);
	b <= (not w and x and not y and z)or
			(not w and x and y and not z)or
			(w  and not x and y and z)or
			(w and x and not y and not z)or
			(w and x and y and not z) or
			(w and x and y and z); 
	c <= (not w and not x and y and not z) or
			(w and x and not z) or 
			(w and x and y);
	d <= (not x and not y and z) or
			(not w and x and not y and not z) or 
			(x and y and z) or 
			(w and not x and y and not z);
	e <= (not w and z) or 
			(not w and x and not y)or
			(not x and not y and z);
	f <= (not w and not x and z )or 
			(not w and not x and y)or
			(not w and y and z)or
			(w and x and not y);
	g <= (not w and not x and not y )or 
			(not w and x and y and z);
	
	
	
	
	a1 <= (not w1 and not x1 and not y1 and z1)	or 
			(not w1 and  x1 and not y1 and not z1)or
			(w1 and not x1 and y1 and z1 )or
			(w1 and x1 and not y1 and not z1 )or
			(w1 and x1 and not y1 and z1);
	b1 <= (not w1 and x1 and not y1 and z1)or
			(not w1 and x1 and y1 and not z1)or
			(w1  and not x1 and y1 and z1)or
			(w1 and x1 and not y1 and not z1)or
			(w1 and x1 and y1 and not z1) or
			(w1 and x1 and y1 and z1); 
	c1 <= (not w1 and not x1 and y1 and not z1) or
			(w1 and x1 and not z1) or 
			(w1 and x1 and y1);
	d1 <= (not x1 and not y1 and z1) or
			(not w1 and x1 and not y1 and not z1) or 
			(x1 and y1 and z1) or 
			(w1 and not x1 and y1 and not z1);
	e1 <= (not w1 and z1) or 
			(not w1 and x1 and not y1)or
			(not x1 and not y1 and z1);
	f1 <= (not w1 and not x1 and z1 )or 
			(not w1 and not x1 and y1)or
			(not w1 and y1 and z1)or
			(w1 and x1 and not y1);
	g1 <= (not w1 and not x1 and not y1 )or 
			(not w1 and x1 and y1 and z1);
	
	
	a2 <= (not w2 and not x2 and not y2 and z2)	or 
			(not w2 and  x2 and not y2 and not z2)or
			(w2 and not x2 and y2 and z2 )or
			(w2 and x2 and not y2 and not z2 )or
			(w2 and x2 and not y2 and z2);
	b2 <= (not w2 and x2 and not y2 and z2)or
			(not w2 and x2 and y2 and not z2)or
			(w2  and not x2 and y2 and z2)or
			(w2 and x2 and not y2 and not z2)or
			(w2 and x2 and y2 and not z2) or
			(w2 and x2 and y2 and z2); 
	c2 <= (not w2 and not x2 and y2 and not z2) or
			(w2 and x2 and not z2) or 
			(w2 and x2 and y2);
	d2 <= (not x2 and not y2 and z2) or
			(not w2 and x2 and not y2 and not z2) or 
			(x2 and y2 and z2) or 
			(w2 and not x2 and y2 and not z2);
	e2 <= (not w2 and z2) or 
			(not w2 and x2 and not y2)or
			(not x2 and not y2 and z2);
	f2 <= (not w2 and not x2 and z2 )or 
			(not w2 and not x2 and y2)or
			(not w2 and y2 and z2)or
			(w2 and x2 and not y2);
	g2 <= (not w2 and not x2 and not y2 )or 
			(not w2 and x2 and y2 and z2);
	
end dosth;