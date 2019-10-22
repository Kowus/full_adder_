LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY HalfAdder_tb IS
END HalfAdder_tb;
ARCHITECTURE behavior OF HalfAdder_tb IS
  COMPONENT HalfAdder IS
    PORT (
      A : IN std_logic;
      B : IN std_logic;
      SUM : OUT std_logic;
      CARRY : OUT std_logic
    );
  END COMPONENT;

  -- Inputs
  SIGNAL A : std_logic := '0';
  SIGNAL B : std_logic := '0';

  -- OUTPUTS
  SIGNAL SUM : std_logic;
  SIGNAL CARRY : std_logic;

BEGIN
  uut : HalfAdder PORT MAP(
    A => A,
    B => B,
    SUM => SUM,
    CARRY => CARRY
  );
  stim_proc : PROCESS
  BEGIN
    WAIT FOR 100 ns;
    A <= '0';
    B <= '0';
    WAIT FOR 10 ns;
    A <= '0';
    B <= '1';
    WAIT FOR 10 ns;
    A <= '1';
    B <= '0';
    WAIT FOR 10 ns;
    A <= '1';
    B <= '1';

  END PROCESS;
END;