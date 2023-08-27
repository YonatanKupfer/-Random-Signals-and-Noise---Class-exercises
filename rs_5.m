N=1000000;
x_1=rand(N,1);
x_2=rand(N,1);
z_1=sqrt(-2*log(x_1(1:N,1))).*cos(2*pi*x_2(1:N,1));
z_2=sqrt(-2*log(x_1(1:N,1))).*sin(2*pi*x_2(1:N,1));
figure
h1 = histogram2(z_1,z_2);
figure
histogram(z_1);
figure
histogram(z_2);