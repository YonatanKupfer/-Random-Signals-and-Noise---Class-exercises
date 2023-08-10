% Parameters
N = 1000; % Number of values
b = 123;     % Constant b
c = 456;     % Constant c
m = 997; % Prime number m

% Initialize the sequence
a = zeros(1, N);

a(1) = 12; % Set an initial seed value
for n = 2:N
    a(n) = mod(a(n - 1) * b + c, m);
end

x = a / m;
% Transform the sequence into a normal distribution
normalized_values = log(x ./ (1 - x)) * 0.55;

% Display the histogram of the normalized values
histogram(normalized_values, 50);
xlabel('Normalized Values');
ylabel('Frequency');
title('Histogram of Normalized Values');





