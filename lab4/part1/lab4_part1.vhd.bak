library ieee;
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.lab2_package.all;

entity lab3_part1 is
    port (
        swa: in std_logic_vector (7 downto 0);
		  swb: in std_logic_vector (7 downto 0);
		  hex1: out std_logic_vector (6 downto 0);
		  hex2: out std_logic_vector (6 downto 0);
		  led: out std_logic
		  --sum: out std_logic_vector (7 downto 0)
    );
end lab3_part1;

architecture dosth of lab3_part1 is
signal carry: std_logic_vector (7 downto 0) := "00000000";
signal carry2: std_logic_vector (7 downto 0) := "00000000";
signal sum: std_logic_vector (7 downto 0) := "00000000";
signal sum2: std_logic_vector (7 downto 0) := "00000000";
signal y: std_logic := '0';
begin
    stage0: fulladd port map ('0'     , swa(0), swb(0), sum(0), carry(0));
	 stage1: fulladd port map (carry(0), swa(1), swb(1), sum(1), carry(1));
	 stage2: fulladd port map (carry(1), swa(2), swb(2), sum(2), carry(2));
	 stage3: fulladd port map (carry(2), swa(3), swb(3), sum(3), carry(3));
	 y <= (sum(3) and sum(2)) or (sum(3) and sum(1)) or carry(3);
	 stage4: fulladd port map ('0', sum(0), '0', sum2(0), carry2(0));
	 stage5: fulladd port map (carry2(0), sum(1), y, sum2(1), carry2(1));
	 stage6: fulladd port map (carry2(1), sum(2), y, sum2(2), carry2(2));
	 stage7: fulladd port map (carry2(2), sum(3), '0', sum2(3), carry2(3));
	 
	 stage8: fulladd port map (y       , swa(4), swb(4), sum2(4), carry(4));
	 stage9: fulladd port map (carry(4), swa(5), swb(5), sum2(5), carry(5));
	 stage10: fulladd port map (carry(5), swa(6), swb(6), sum2(6), carry(6));
	 stage11: fulladd port map (carry(6), swa(7), swb(7), sum2(7), carry(7));
	 --stage4: fulladd port map (carry(3), swa(4), swb(4), sum(4), carry(4));
	 --stage5: fulladd port map (carry(4), swa(5), swb(5), sum(5), carry(5));
	 --stage6: fulladd port map (carry(5), swa(6), swb(6), sum(6), carry(6));
	 --stage7: fulladd port map (carry(6), swa(7), swb(7), sum(7), carry(7));
	 --                        4      8       2       1
	 hex1_out: hex port map (sum2(0), sum2(1), sum2(2), sum2(3), hex1(0), hex1(1), hex1(2), hex1(3), hex1(4), hex1(5), hex1(6));
	 hex2_out: hex port map (sum2(4), sum2(5), sum2(6), sum2(7), hex2(0), hex2(1), hex2(2), hex2(3), hex2(4), hex2(5), hex2(6));
	 
	 led <= y;
	 
end dosth;
