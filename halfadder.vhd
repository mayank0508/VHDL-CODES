library library IEEE;
use IEEE.std_logic_1164.all;

entity halfadder is
    port (a,b: in bit;
          sum, carry: out bit);

end halfadder;

architecture halfadder_arch of halfadder is
    begin
        sum<= a xor b;
        carry<= a and b;
        
    end halfadder_arch;