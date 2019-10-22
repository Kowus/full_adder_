LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY FullAdder_tb IS
END FullAdder_tb;

ARCHITECTURE behavior OF FullAdder_tb IS
  COMPONENT FullAdder IS
    PORT (
      A : IN std_logic;
      B : IN std_logic;
      C : IN std_logic;
      SUM : OUT std_logic;
      CARRY : OUT std_logic
    );
  END COMPONENT;

  -- Inputs
  SIGNAL A : std_logic := '0';
  SIGNAL B : std_logic := '0';
  SIGNAL C : std_logic := '0';

  -- Outputs
  SIGNAL SUM : std_logic;
  SIGNAL CARRY : std_logic;

BEGIN
  uut : FullAdder PORT MAP(
    A => A,
    B => B,
    C => C,
    SUM => SUM,
    CARRY => CARRY
  );

  stim_proc : PROCESS
  BEGIN
    -- hold reset state for 100 ns
    WAIT FOR 100 ns;
    -- 0,0,0
    A <= '0';
    B <= '0';
    C <= '0';
    WAIT FOR 10 ns;
    -- 0,0,1
    A <= '0';
    B <= '0';
    C <= '1';
    WAIT FOR 10 ns;
    -- 0,1,0
    A <= '0';
    B <= '1';
    C <= '0';
    WAIT FOR 10 ns;
    -- 0,1,1
    A <= '0';
    B <= '1';
    C <= '1';
    WAIT FOR 10 ns;
    -- 1,0,0
    A <= '1';
    B <= '0';
    C <= '0';
    WAIT FOR 10 ns;
    -- 1,0,1
    A <= '1';
    B <= '0';
    C <= '1';
    WAIT FOR 10 ns;
    -- 1,1,1
    A <= '1';
    B <= '1';
    C <= '1';
    -- WAIT FOR 1000 ns;
    -- ASSERT FALSE REPORT "Simulation Finished" SEVERITY note;
    -- insert stimulus here
  END PROCESS;
END;