var n, i, j: integer;
    a: array[1..1000] of longint;
    max, temp: int64;
begin
  max := 0;
  read(n);
  for i := 1 to n do read(a[i]);
  for i := 1 to n do
    begin
      for j := i to n do
        if a[j] < a[i] then
          break;
      if (j = n) and (a[j] >= a[i]) then inc(j);
      temp := a[i] * (j - i);
      for j := i downto 1 do
        if a[j] < a[i] then break;
      temp := temp + (i - j + 1);
      if temp > max then max := temp;
    end;
  write(max - 1);
end.