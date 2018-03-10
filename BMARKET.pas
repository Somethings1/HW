var x, y, n, k: longint;
    check: boolean;
begin
  check := true;
  read(y, k, n);
  for x := 1 to n - y do
    if ((x + y) mod k = 0) then
      begin
        write(x, ' ');
        check := false;
      end;
  if check then write(-1);
end.