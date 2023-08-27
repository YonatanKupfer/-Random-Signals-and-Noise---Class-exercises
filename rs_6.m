S=1000000;
lambda=50;
sigma=100;
mu=50;
N(1,1:S)=poissrnd(lambda);
y=zeros(1,S);
for i = 1:S
x_rand=sigma*randn(1,N(i))+mu;
y(1,i)=sum(x_rand);
end

histogram(y,100)