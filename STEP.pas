var a: longint;
    count, n, i: integer;
function isStairNumber(x: longint): boolean;
var r: longint;
begin
  r := x mod 10;
  x := x div 10;
  while x > 0 do
    begin
      if r < x mod 10 then exit(false);
      r := x mod 10;
      x := x div 10;
    end;
  exit(true);
end;
begin
  count := 0;
  read(n);
  for i := 1 to n do
    begin
      read(a);
      if (a > 10) and isStairNumber(a) then count := count + 1;
    end;
  write(count);
end.
