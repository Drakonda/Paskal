{Дано 10 чисел. Найти сумму положительных чисел,произведение отрицательных и
кол-во нулевых чисел. Предусмотреть возможность отсутствия полож., отр., нулевых чисел и
написать сообщение. +найти среднее арифметическое полож.чисел
 и среднее геометрическое отр.чисел}

Program tenten;
var
   i: byte;
   x, s, p, b, k, l, f, g: real;
begin
s:=0;
p:=1;
k:=0;
b:=0;
l:=0;
writeln('Введите числа');
for i:=1 to 10 do
                 begin
                 read(x);
                 if x=0 then k:=k+1
                        else if x>0 then begin
                                         s:=s+x;
                                         l:=l+1
                                         end
                                    else begin
                                              p:=p*x;
                                              b:=b+1
                                         end
                  end;
f:=s/l;
g:=exp(1/b*ln(p));
if s=0 then writeln('Положительных чисел нет')
       else begin
            writeln('S=',s:10:2);
            writeln('Среднее арифм.:',f:10:2)
            end;
if b=0 then writeln('Отрицательных чисел нет')
       else begin writeln('P=',p:10:2);
            writeln('Среднее геометрическое:',g:10:2)
            end;
if k=10 then writeln('Все числа нулевые')
        else writeln('Кол-во нулей=',k:2);
readln
end.                  