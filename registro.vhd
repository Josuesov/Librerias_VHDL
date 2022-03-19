-------------------------------------------------------------------------------
--
-- Title       : registro
-- Design      : Registro
-- Author      : Usuario
-- Company     : na
--
-------------------------------------------------------------------------------
--
-- File        : registro.vhd
-- Generated   : Tue Feb  2 20:09:42 2021
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
--{entity {registro} architecture {registro}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity registro is
	port(
	din : in std_logic_vector(25 downto 0);
	en,reset : in std_logic;
	dout : out std_logic_vector(25 downto 0)
	);
end registro;

--}} End of automatically maintained section

architecture registro of registro is
begin

	 -- enter your statements here --
	process	(en,reset)
	begin
		if reset='1' then
			dout <= "00000000000000000000000000";
		elsif en='1' then 
			dout <=	din;
		end if;	
	end process;
	
end registro;
