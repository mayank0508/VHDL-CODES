library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity twobitcomparator is
port( A: in std_logic_vector(1 downto 0);
      B: in std_logic_vector(1 downto 0);
		E: out std_logic;
		G: out std_logic;
		L: out std_logic
		);
end twobitcomparator;

architecture Behavioral of twobitcomparator is

begin

process(A,B)
begin
	 if(A>B)then
	 G <= '1';
	 else
	 G <= '0';
	 end if;

	 if(A=B)then
	 E <= '1';
	 else
	 E <= '0';
	 end if;

	 if(A<B)then
	 L <= '1';
	 else
	 L <= '0';
	 end if; 
end process;
end Behavioral;
