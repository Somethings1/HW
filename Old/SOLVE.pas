var n: int64;
    i: longint;
    check: boolean;
function getSum(a: int64):integer;
var sum: integer;
begin
  sum := 0;
  while a <> 0 do
    begin
      sum := sum + a mod 10;
      a := a div 10;
    end;
  exit(sum);
end;
begin
  check := false;
  read(n);
  for i := 1 to trunc(sqrt(n)) + 1 do
    if i * i + i * getSum(i) = n then
      begin
        check := true;
        break;
      end;
  if check then write(i)
  else write(-1);
end.