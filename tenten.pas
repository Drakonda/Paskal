{���� 10 �����. ����� ����� ������������� �����,������������ ������������� �
���-�� ������� �����. ������������� ����������� ���������� �����., ���., ������� ����� �
�������� ���������. +����� ������� �������������� �����.�����
 � ������� �������������� ���.�����}

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
writeln('������� �����');
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
if s=0 then writeln('������������� ����� ���')
       else begin
            writeln('S=',s:10:2);
            writeln('������� �����.:',f:10:2)
            end;
if b=0 then writeln('������������� ����� ���')
       else begin writeln('P=',p:10:2);
            writeln('������� ��������������:',g:10:2)
            end;
if k=10 then writeln('��� ����� �������')
        else writeln('���-�� �����=',k:2);
readln
end.                  