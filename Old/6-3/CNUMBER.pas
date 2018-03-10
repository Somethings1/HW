var n, temp: longint;
    flag: byte;
    check: boolean;
begin
  flag := 1;
  temp := 0;
  check := true;
  read(n);
  while n <> 0 do
    begin
      temp := temp * 10 + n mod 10;
      n := n div 10;
    end;
  while temp <> 0 do
    begin
      if temp mod 10 mod 2 <> flag then
        begin
          check := false;
          break;
        end
      else
        begin
          temp := temp div 10;
          flag := abs(flag - 1);
        end;
    end;
  if check then write('YES')
  else write('NO');
end.
