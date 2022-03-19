library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity contador_mux is
	Port(en, clk : in std_logic;
	cuenta : out std_logic_vector(4 downto 0):="00000");
end contador_mux;


architecture contador_pulsos of contador_mux is

signal cnt : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000";

begin

	process(clk)
	begin
		if rising_edge(clk) then
			if en='1' then
				cnt <= cnt+1;
				if cnt = 25 then		 --n-1 datos a mandar   si lo hace mal disminuiur 1
				   cnt <="00000";
				end if;
			end if;
		end if;
	end process;
	
cuenta <= cnt;

end contador_pulsos;
