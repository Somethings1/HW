var l, r, x, i: longint;
    check: boolean;
function pow(base, power: longint): longint;
begin
  if power = 0 then exit(1);
  if power = 1 then exit(base);
  exit(base * pow(base, power - 1));
end;
begin
  check := false;
  read(l, r, x);
  for i := 0 to r div 2 do
    if (pow(x, i) >= l) and (pow(x, i) <= r) then
      begin
        write(pow(x, i), ' ');
        check := true;
      end;
  if not check then write(-1);
end.