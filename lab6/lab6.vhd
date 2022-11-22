library ieee;
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity lab6 is
	generic (N: integer:=8);
    port (
		clk, reset, w: in std_logic;
		output: out std_logic_vector(2 downto 0)
    );
end lab6;

architecture dosth of lab6 is
	TYPE state_type is (start, s1, s2a, s2b, s3, s4);
	

    --attribute state: state_type;
    --attribute state  ： signal is "000 001 010 011 100 101";
	signal state : state_type := start;
	signal counter : std_logic :='0';
begin
	
	process(counter, clk, reset, w)
	begin
		if (rising_edge(clk)) then
			if(counter = '1') then
				counter <= '0';
			else 

				counter <= '1';
			end if;
		end if;
		if (rising_edge(counter)) then 
			case(state) is
				when start => 
					output <= "000";
					if w ='1' then
						state <= s1;
						output <= "001";
					end if;
				when s1 => 
					output <= "001";
					if w ='1' then
						state <= s2b;
						output <= "011";
					else 
						state <= s2a;
						output <= "010";
					end if;
				when s2a => 
					state <= s3;
					output <= "100";
				when s2b => 
					state <= s3;
					output <= "100";
				when s3 => 
					output <= "100";
					if w ='1' then
						state <= s4;
						output <= "101";
					else 
						state <= s1;
						output <= "001";
					end if;
				when s4 => 
					output <= "101";
						
				when others => output <= "111";
			end case ;
			if reset = '1' then
				state <= start;
				output <= "000";
			end if ;
		end if;
	end process;
end dosth;