library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity contador_pulsos is
	Port(en, clk : in std_logic;
	flag : out std_logic);
end contador_pulsos;


architecture contador_pulsos of contador_pulsos is

signal cuenta : integer range 0 to 7;

begin

	process(clk)
	begin
		if rising_edge(clk) then
			if en='1' then
				cuenta <= cuenta+1;
				if cuenta = 5 then		 --n-1 datos a mandar   si lo hace mal disminuiur 1
					flag <= '1';
					cuenta <= 0;
				else flag <='0';
				end if;
			end if;
		end if;
	end process;

end contador_pulsos;
