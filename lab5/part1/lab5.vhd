library ieee;
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.lab5_package.all;
library altera;
use altera.maxplus2.all;

entity lab5 is
	generic (N: integer:=8);
    port (
		clk, clearn, load, lr_sel: in std_logic;
		sdi: in std_logic;
		di: in std_logic_vector(N-1 downto 0);
		qo: buffer std_logic_vector(N-1 downto 0);

		clk_sec_led: out std_logic;
		clk_out_led: out std_logic
    );
end lab5;

architecture dosth of lab5 is
	signal clk_sec: std_logic := '0';
	signal count: integer := 0;
	signal clk_out: std_logic := '0';
	signal count_sec: integer := 0;
begin

	process(clk_out,clk,clk_sec, lr_sel, qo, sdi)
	begin
		if (rising_edge(clk)) then
			if (count = 1) then
				if clk_sec='0' then
					clk_sec <= '1';
				else 
					clk_sec <= '0';
				end if ;
				count <= 0;
			else
				count <= count + 1;
			end if;
		end if;

		-- if (rising_edge(clk_sec)) then
		-- 	if (count_sec = 1) then
		-- 		if clk_out = '0' then
		-- 			clk_out <= '1';
		-- 		else 
		-- 			clk_out <= '0';
		-- 		end if ;
		-- 	else
		-- 		count_sec <= count_sec + 1;
		-- 	end if;
		-- end if;
	
			if load ='0' then 
				for i in 0 to N-1 loop
					qo(i) <= di(i);
				end loop;
			else
				if clearn = '0' then
					for i in 0 to N-1 loop
						qo(i) <= '0';
					end loop;
				else
					if clk_sec'event and clk_sec = '1' then
						if  lr_sel = '0' then
							for i in 1 to N-1 loop
								qo(i) <= qo(i-1);
							end loop;
							qo(0) <= sdi;
						else
							for i in 0 to N-2 loop
								qo(i)<=qo(i+1);
							end loop;
							qo(N-1) <= sdi;
						end if;
						
					end if;
				end if ;
			end if ;
	end process;

	clk_sec_led <= clk_sec;
	clk_out_led <= clk_out;

end dosth;