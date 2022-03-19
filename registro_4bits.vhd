library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity registro_4bits is
    Port ( din : in  STD_LOGIC_VECTOR (3 downto 0);
           dout : out  STD_LOGIC_VECTOR (3 downto 0);
           clk, en : in  STD_LOGIC);
end registro_4bits;

architecture Behavioral of registro_4bits is

signal dato : std_logic_vector(3 downto 0);

begin

	process(clk)
	begin
		if rising_edge(clk) then
			if en = '1' then
			dato <= din;	
			end if;
		end if;
	end process;
	
	dout <= dato;

end Behavioral;

