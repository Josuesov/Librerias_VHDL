-------------------------------------------------------------------------------
--
-- Title       : mult
-- Design      : mult
-- Author      : Josué Soto Vega
-- Company     : na
--
-------------------------------------------------------------------------------
--
-- File        : mult.vhd
-- Generated   : Tue Feb  2 21:11:41 2021
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
--{entity {mult} architecture {mult}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_signed.all;

entity mult is
	port(
	A,B : in std_logic_vector(4 downto 0);
	mult : out std_logic_vector(9 downto 0)
	);
end mult;

--}} End of automatically maintained section

architecture mult of mult is
begin

	 -- enter your statements here --
	 
	 mult <= A*B;
	 
end mult;
