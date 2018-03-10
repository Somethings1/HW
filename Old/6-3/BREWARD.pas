var n, smaller: longint;
begin
  read(n);
  smaller := n mod 10;
  n := n div 10;
  if (n mod 10 > smaller) then smaller := n mod 10;
  write(n div 10 * 10 + smaller);
end.