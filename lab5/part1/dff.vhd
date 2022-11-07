LIBRARY ieee;
USE ieee.std_logic_1164.ALL;


ENTITY dff IS
   PORT
   (
      data, clock, clearn    : IN STD_LOGIC;
      q_out                  : OUT STD_LOGIC
   );
END dff;

ARCHITECTURE a OF dff IS

BEGIN
process(clock) 
begin

    if clock'EVENT AND clock ='1'  then
        q_out<=data;
    end if;
    if clearn='0' then
        q_out<='0';
    end if ;
end process;
END a;