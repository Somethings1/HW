var n, m, i, j, temp: integer;
    a: array[1..500] of integer;
    check: boolean;
begin
  read(n, m);
  for i := 1 to n do read(a[i]);
  for i := 2 to n do
    begin
      check := false;
      for j := n downto i do
        if a[j] > a[j - 1] then
          begin
            temp := a[j];
            a[j] := a[j - 1];
            a[j - 1] := temp;
            check := true;
          end;
      if not check then break;
    end;
  check := false;
  for i := 1 to n do
    begin
      m := m - a[i] + 1;
      if m <= 0 then
        begin
          check := true;
          break;
        end;
    end;
  if check then write(i)
  else write(-1);
end.