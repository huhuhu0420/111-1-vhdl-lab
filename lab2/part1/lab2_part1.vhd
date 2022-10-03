library ieee;
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.lab2_package.all;

entity lab2_part1 is
    port (
        swa: in std_logic_vector (7 downto 0);
		  swb: in std_logic_vector (7 downto 0);
		  hex1: out std_logic_vector (6 downto 0);
		  hex2: out std_logic_vector (6 downto 0);
		  led: out std_logic
		  --sum: out std_logic_vector (7 downto 0)
    );
end lab2_part1;

architecture dosth of lab2_part1 is
signal carry: std_logic_vector (7 downto 0) := "00000000";
signal sum: std_logic_vector (7 downto 0) := "00000000";
begin
    stage0: fulladd port map ('0', swa(0), swb(0), sum(0), carry(0));
	 stage1: fulladd port map (carry(0), swa(1), swb(1), sum(1), carry(1));
	 stage2: fulladd port map (carry(1), swa(2), swb(2), sum(2), carry(2));
	 stage3: fulladd port map (carry(2), swa(3), swb(3), sum(3), carry(3));
	 stage4: fulladd port map (carry(3), swa(4), swb(4), sum(4), carry(4));
	 stage5: fulladd port map (carry(4), swa(5), swb(5), sum(5), carry(5));
	 stage6: fulladd port map (carry(5), swa(6), swb(6), sum(6), carry(6));
	 stage7: fulladd port map (carry(6), swa(7), swb(7), sum(7), carry(7));
	 --                        4      8       2       1
	 hex1_out: hex port map (sum(0), sum(1), sum(2), sum(3), hex1(0), hex1(1), hex1(2), hex1(3), hex1(4), hex1(5), hex1(6));
	 hex2_out: hex port map (sum(4), sum(5), sum(6), sum(7), hex2(0), hex2(1), hex2(2), hex2(3), hex2(4), hex2(5), hex2(6));
	 
	 led <= carry(6) xor carry(7);
	 
end dosth;
