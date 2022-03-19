-------------------------------------------------------------------------------
--
-- Title       : bin_to_ascii
-- Design      : bin_to_ascii
-- Author      : josuesov115@outlook.es
-- Company     : josjos115
--
-------------------------------------------------------------------------------
--
-- File        : bin_to_ascii.vhd
-- Generated   : Mon Dec  7 14:12:11 2020
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {bin_to_ascii} architecture {bin_to_ascii}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity bin_to_ascii is
	port(din : in std_logic_vector(7 downto 0);
	signo : out std_logic_vector(7 downto 0);
	decena : out std_logic_vector(7 downto 0);
	unidad : out std_logic_vector(7 downto 0);
	decima : out std_logic_vector(7 downto 0);
	centesima : out std_logic_vector(7 downto 0));
end bin_to_ascii;

--}} End of automatically maintained section

architecture synth  of bin_to_ascii is
begin
	 with din(7) select signo <=
	"00101011" when '0',			-- signo +
	"00101101" when others;			-- signo -
	
	with din(6 downto 2) select decena <=
	"00110000" when "00000",	--inicia 0
	"00110000" when "00001",
	"00110000" when "00010",
	"00110000" when "00011",
	"00110000" when "00100",
	"00110000" when "00101",
	"00110000" when "00110",
	"00110000" when "00111",
	"00110000" when "01000",
	"00110000" when "01001",
	"00110001" when "01010",	--inicia 1
	"00110001" when "01011",
	"00110001" when "01100",
	"00110001" when "01101",
	"00110001" when "01110",
	"00110001" when "01111",
	"00110001" when "10000",
	"00110001" when "10001",
	"00110001" when "10010",
	"00110001" when "10011",
	"00110010" when "10100",	--inicia 2
	"00110010" when "10101",
	"00110010" when "10110",
	"00110010" when "10111",
	"00110010" when "11000",
	"00110010" when "11001",
	"00110010" when "11010",
	"00110010" when "11011",
	"00110010" when "11100",
	"00110010" when "11101",
	"00110011" when "11110",	--inicia 3
	"00110011" when others;
	
	with din(6 downto 2) select unidad <=
	"00110000" when "00000",	--0
	"00110001" when "00001",	--1
	"00110010" when "00010",	--2
	"00110011" when "00011",	--3
	"00110100" when "00100",    --4
	"00110101" when "00101",    --5
	"00110110" when "00110",    --6
	"00110111" when "00111",    --7
	"00111000" when "01000",    --8
	"00111001" when "01001",    --9
	"00110000" when "01010",    --0
	"00110001" when "01011",    --1
	"00110010" when "01100",    --2
	"00110011" when "01101",    --3
	"00110100" when "01110",    --4
	"00110101" when "01111",    --5
	"00110110" when "10000",    --6
	"00110111" when "10001",    --7
	"00111000" when "10010",    --8
	"00111001" when "10011",    --9
	"00110000" when "10100",    --0
	"00110001" when "10101",
	"00110010" when "10110",
	"00110011" when "10111",
	"00110100" when "11000",
	"00110101" when "11001",
	"00110110" when "11010",
	"00110111" when "11011",
	"00111000" when "11100",
	"00111001" when "11101",
	"00110000" when "11110",
	"00110001" when others;
	
	with din(1 downto 0) select decima <=
	"00110000" when "00",
	"00110010" when "01",
	"00110101" when "10",
	"00110111" when others;
	
	with din(1 downto 0) select centesima <=
	"00110000" when "00",
	"00110101" when "01",
	"00110000" when "10",
	"00110101" when others;
	
end synth;