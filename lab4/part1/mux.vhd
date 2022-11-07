
library ieee;
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity mux is
    port (
        w0,w1,s: in std_logic;
        o: out std_logic
    );
end mux;

architecture muxWork of mux is
    
begin
    WITH s SELECT
        o<=w0 WHEN '0',
            w1 WHEN OTHERS;
end muxWork;
