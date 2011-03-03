with Dice; use Dice;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure statistic is
  result : Integer;
  function filter (dice1 : Die; dice2 : Die) return Boolean is
  begin
    if dice1 = dice2 then
      return True;
    else
      return False;
    end if;
  end filter;
begin
  result := Roll(10, filter'Access);
  Put(result);
end statistic;
