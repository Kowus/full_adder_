library ieee;
use ieee.std_logic_1164.all;

entity HalfAdder is
  port(
    A:in std_logic;
    B: in std_logic;
    SUM: out std_logic;
    CARRY: out std_logic
  );
end HalfAdder;

architecture Behavioral of HalfAdder is 
begin
  SUM <= A xor B;
  CARRY <= A and B;
end Behavioral;