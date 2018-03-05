var a: longint;
    count, n, i: integer;
function isStairNumber(n: longint): boolean;
var temp: byte;
begin
  temp := n mod 10;
  n := n div 10;
  while n <> 0 do
    begin
      if temp < n mod 10 then exit(false);
      temp := n mod 10;
      n := n div 10;
    end;
end;
begin
  count := 0;
  read(n);
  for i := 1 to n do
    begin
      read(a);
      if isStairNumber(a) then count := count + 1;
    end;
  write(count);
end.