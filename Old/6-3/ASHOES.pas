var bigger, smaller: longint;
begin
  reaD(smaller, bigger);
  if (bigger < smaller) then
    begin
      bigger := bigger + smaller;
      smaller := bigger - smaller;
      bigger := bigger - smaller;
    end;
  write(smaller, ' ', (bigger - smaller) div 2);
end.