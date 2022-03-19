-------------------------------------------------------------------------------
--
-- Title       : suma
-- Design      : suma
-- Author      : Usuario
-- Company     : na
--
-------------------------------------------------------------------------------
--
-- File        : suma.vhd
-- Generated   : Mon Feb  1 01:15:15 2021
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
-------------------------------------------------------------------------------
--
-- Description : Suma para implementar polinomio
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {suma} architecture {suma}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_signed.all;

entity suma is
	 port(
		 a : in STD_LOGIC_VECTOR(12 downto 0);
		 b : in STD_LOGIC_VECTOR(12 downto 0);
		 suma : out STD_LOGIC_VECTOR(12 downto 0)
	     );
end suma;

--}} End of automatically maintained section

architecture suma of suma is
begin

	-- enter your statements here --	 
	suma <= a + b;

end suma;
