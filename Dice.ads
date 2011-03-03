package Dice is
  subtype Die is Integer range 1 .. 6;
  type Proc_Filter_T is access function (X1 : Die; X2 : Die) return Boolean;
  function Roll (times : Integer; Proc_Filter : Proc_Filter_T) return Integer;
end Dice;
