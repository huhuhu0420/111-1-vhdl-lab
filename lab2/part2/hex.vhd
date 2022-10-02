library ieee;
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity hex is
    port (
        z, y, x, w: in std_logic;
        a, b, c, d, e, f, g: out std_logic
    );
end hex;

architecture dosth of hex is
    
begin
    a <= (not w and not x and not y and z)    or 
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
end dosth;
