N = 1000000;
m = 997;
b = 234;
c = 57;

a = zeros(1, N);
U_n = zeros(1, N);
gaus = zeros(1, N);
Pgaus = zeros(1, N);

a(1) = 78;
U_n(1) = a(1) / m;
gaus(1) = 0.55 * log(U_n(1) / (1 - U_n(1)));

for n = 2:N
    a(n) = mod((b * a(n - 1) + c), m);
    U_n(n) = a(n) / m;
    gaus(n) = 0.55 * log(U_n(n) / (1 - U_n(n)));
    Pgaus(n) = gaus(n) ^ 2;
end

figure
subplot(2, 1, 1);
histogram(gaus, 50);
xlabel('gaus');
ylabel('Frequency');
title('Histogram of gaus');

subplot(2, 1, 2);
histogram(Pgaus, 50);
xlabel('Pgaus');
ylabel('Frequency');
title('Histogram of Pgaus');
