library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BCDadder is
port( x,y :	in std_logic_vector(3 downto 0);
      S : out std_logic_vector(4 downto 0)
		);
end BCDadder;

architecture Behavioral of BCDadder is

signal adjust: std_logic;
signal sum: std_logic_vector(4 downto 0);

begin
	 sum <= ('0' & x)+ y;
	 adjust <= '1' when((sum>9) or sum(4)= '1')else '0';
	 S <= sum when (adjust ='0') else sum+6; 

end Behavioral;