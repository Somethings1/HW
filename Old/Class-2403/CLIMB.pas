var n, i, j, max, temp: longint;
    h: array[1..200000] of longint;
begin
  read(n);
  for i := 1 to n do
      read(h[i]);
  for i := 1 to n do
    begin
      j := i + 1;
      while h[j + 1] > h[j] do
        inc(j);
      if h[j] - h[i] > max then max := h[j] - h[i];
    end;
  write(max);
end.