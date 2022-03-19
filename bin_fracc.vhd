library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity bin_fracc is
	port(din : in std_logic_vector(3 downto 0);
	dcm : out std_logic_vector(9 downto 0);
	ctm : out std_logic_vector(9 downto 0);
	mil : out std_logic_vector(9 downto 0);
	dmil : out std_logic_vector(9 downto 0));
end bin_fracc;

--}} End of automatically maintained section

architecture synth  of bin_fracc is
begin

	with din select dcm <=
	"1000110000" when "0000",	
	"1000110000" when "0001",
	"1000110001" when "0010",
	"1000110001" when "0011",
	"1000110010" when "0100",
	"1000110011" when "0101",
	"1000110011" when "0110",
	"1000110100" when "0111",
	"1000110101" when "1000",
	"1000110101" when "1001",
	"1000110110" when "1010",	
	"1000110110" when "1011",
	"1000110111" when "1100",
	"1000111000" when "1101",
	"1000111000" when "1110",
	"1000111001" when others;

	with din select ctm <=
	"1000110000" when "0000",	
	"1000110110" when "0001",
	"1000110010" when "0010",
	"1000111000" when "0011",
	"1000110101" when "0100",
	"1000110001" when "0101",
	"1000110111" when "0110",
	"1000110011" when "0111",
	"1000110000" when "1000",
	"1000110110" when "1001",
	"1000110010" when "1010",	
	"1000111000" when "1011",
	"1000110101" when "1100",
	"1000110001" when "1101",
	"1000110111" when "1110",
	"1000110011" when others;
	
	with din select mil <=
	"1000110000" when "0000",	
	"1000110010" when "0001",
	"1000110101" when "0010",
	"1000110111" when "0011",
	"1000110000" when "0100",
	"1000110010" when "0101",
	"1000110101" when "0110",
	"1000110111" when "0111",
	"1000110000" when "1000",
	"1000110010" when "1001",
	"1000110101" when "1010",	
	"1000110111" when "1011",
	"1000110000" when "1100",
	"1000110010" when "1101",
	"1000110101" when "1110",
	"1000110111" when others;
	
	with din select dmil <=
	"1000110000" when "0000",	
	"1000110101" when "0001",
	"1000110000" when "0010",
	"1000110101" when "0011",
	"1000110000" when "0100",
	"1000110101" when "0101",
	"1000110000" when "0110",
	"1000110101" when "0111",
	"1000110000" when "1000",
	"1000110101" when "1001",
	"1000110000" when "1010",	
	"1000110101" when "1011",
	"1000110000" when "1100",
	"1000110101" when "1101",
	"1000110000" when "1110",
	"1000110101" when others;
	
	
	
end synth;