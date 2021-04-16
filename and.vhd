library library IEEE;
use IEEE.std_logic_1164.all;

entity and_gate is
    port (a,b: in bit;
           y: out bit);

end and_gate;

architecture and_gate_arch of and_gate is
    begin
        y< = a and b;
    end and_gate_arch;
