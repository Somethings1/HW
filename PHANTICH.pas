 var n, i, power: longint;
 begin
   i := 2;
   power := 0;
   read(n);
   while n <> 1 do
     begin
       if n mod i = 0 then
         begin
           power := power + 1;
           n := n div i;
           if n = 1 then writeln(i, ' ', power);
         end
       else
         begin
           if power >= 1 then writeln(i, ' ', power);
           i := i + 1;
           power := 0;
         end;
     end;
 end.