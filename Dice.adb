with Ada.Numerics.Discrete_Random;
package body Dice is
  function Roll(times : Integer; Proc_Filter : Proc_Filter_T)  return Integer is
    package Random_Dice is new Ada.Numerics.Discrete_Random (Die);
    use Random_Dice;
    seed : Generator;
    dice1 : Die;
    dice2 : Die;
    counter : Integer := 0;
  begin
    Reset (seed);
    for i in 1 .. times loop
      dice1 := Random (seed);
      dice2 := Random (seed);
      if Proc_Filter(dice1, dice2) then
        counter := counter + 1;
      end if;
    end loop;
    return counter;
  end Roll;
end Dice;
