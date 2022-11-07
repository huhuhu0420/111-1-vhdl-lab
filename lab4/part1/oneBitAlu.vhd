library ieee;
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.lab4_package.all;

entity oneBitAlu is
    port (
		a, b,less ,carryin: in std_logic;
		opcode: in std_logic_vector(3 downto 0);
		result, carryout: out std_logic
    );
end oneBitAlu;

architecture dosth of oneBitAlu is
signal andresult: std_logic := '0';
signal orresult: std_logic := '0';
signal addresult: std_logic := '0';
signal Aresult:std_logic :='0';
signal Bresult:std_logic :='0';
signal Selectresult1:std_logic :='0';
signal Selectresult2:std_logic :='0';
signal final:std_logic :='0';
begin

	Ainvert: mux port map (a,not a, opcode(0),Aresult);
	Binvert: mux port map (b,not b, opcode(1),Bresult);
	andresult <= Aresult and Bresult;
	orresult <= Aresult or Bresult;
	addstage: fulladd port map (carryin, Aresult, Bresult, addresult, carryout);
	
	--select
	MUXAndOr: mux port map (andresult,orresult, opcode(3),Selectresult1);
	MUXaddSet: mux port map (addresult,less, opcode(3),Selectresult2);
	MUXfinal: mux port map (Selectresult1,Selectresult2, opcode(2),final);

	--led <= final;
	result <= final;
end dosth;
