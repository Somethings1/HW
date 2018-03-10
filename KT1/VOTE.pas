var status: byte;
    n, res: integer;
begin
  res := 0;
  read(n);
  for n := n downto 1 do
    begin
      read(status);
      if status = 1 then res := res + 1
      else res := res - 1;
    end;
  if res > 0 then write('YES')
  else if res = 0 then write('CANCEL')
  else write('NO');
end.