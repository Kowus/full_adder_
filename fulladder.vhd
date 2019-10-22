LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY FullAdder IS
  PORT (
    A : IN std_logic;
    B : IN std_logic;
    C : IN std_logic;
    SUM : OUT std_logic;
    CARRY : OUT std_logic
  );
END FullAdder;

ARCHITECTURE Behavioral OF FullAdder IS

  SIGNAL sum1, sum2, carry1, carry2 : std_logic;
  COMPONENT HalfAdder IS -- Component declaration
    PORT (
      A : IN std_logic;
      B : IN std_logic;
      SUM : OUT std_logic;
      CARRY : OUT std_logic
    );
  END COMPONENT;
BEGIN

  HA1 : HalfAdder
  PORT MAP(
    A => A,
    B => B,
    SUM => sum1,
    CARRY => carry1
  );

  HA2 : HalfAdder
  PORT MAP(
    A => C,
    B => sum1,
    SUM => sum2,
    CARRY => carry2
  );
  SUM <= sum2;
  CARRY <= carry1 OR carry2;
END Behavioral;