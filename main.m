m = input('Введите массу мяча ');
r = input('Введите радиус мяча ');
in = input('Введите через пробел координаты, начальную скорость и угол броска ', 's');
data = split(in, ' ');
x = str2num(cell2mat(data(1)));
y = str2num(cell2mat(data(2)));
z = str2num(cell2mat(data(3)));
v = str2num(cell2mat(data(4)));
a = str2num(cell2mat(data(5)));
a = deg2rad(a);
in = input('Введите через пробел координаты и радиус корзины ', 's');
data = split(in, ' ');
xk = str2num(cell2mat(data(1)));
yk = str2num(cell2mat(data(2)));
zk = str2num(cell2mat(data(3)));
rk = str2num(cell2mat(data(4)));

g = 9.81;
result = solution(m,r,x,y,z,v,a,xk,yk,zk,rk,g);

if result
    disp('Попадание')
else
    disp('Промах')
end

