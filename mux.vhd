

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux is
	port(d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d20 : in std_logic_vector(7 downto 0);
		sel : in std_logic_vector(4 downto 0);
		dout : out std_logic_vector(7 downto 0)); 
end mux;

--}} End of automatically maintained section

architecture comportamental of mux is
begin

dout <= d1 when sel="00000" else
d2 when sel="00001" else
d3 when sel="00010" else
d4 when sel="00011" else
d5 when sel="00100" else
d6 when sel="00101" else
d7 when sel="00110" else
d8 when sel="00111" else
d9 when sel="01000" else
d10 when sel="01001" else
d11 when sel="01010" else
d12 when sel="01011" else
d13 when sel="01100" else
d14 when sel="01101" else	
d15 when sel="01110" else
d16 when sel="01111" else
d17 when sel="10000" else
d18 when sel="10001" else
d19 when sel="10010" else
d20;
	
end comportamental;
