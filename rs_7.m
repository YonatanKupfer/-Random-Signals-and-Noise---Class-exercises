N = 10000000;
sigma_squared = 1/2;
X = randi([0, 1], N, 1) * 2 - 1;  % Generate an array of values 1 or -1 with equal probability
W = sqrt(sigma_squared) * randn(N, 1);  % Generate normally distributed noise N(0, sigma^2)
Y = X + W;  % Noisy signal Y                       % Add noise to the original signal

optimizer_tanh = tanh(Y / sigma_squared);
optimizer_frac = 1 ./ (1 + sigma_squared) .* Y;


% Calculate mean squared errors for the optimizers
mse_tanh = mean((optimizer_tanh - X).^2);
mse_frac = mean((optimizer_frac - X).^2);


% Plot the signals and histograms
subplot(3, 2, 1);
plot(X);
title('Original Signal X');
subplot(3, 2, 2);
hist(X, 30);
title('Histogram of X');

subplot(3, 2, 3);
plot(Y);
title('Noisy Signal Y');
subplot(3, 2, 4);
hist(Y, 30);
title('Histogram of Y');

subplot(3, 2, 5);
plot(optimizer_tanh);
title('Optimized Signal (tanh)');
subplot(3, 2, 6);
hist(optimizer_tanh, 30);
title('Histogram of Optimized (tanh)');

sgtitle('Signal and Optimized Signal Analysis');

fprintf('Mean Squared Error (tanh optimizer): %f\n', mse_tanh);
fprintf('Mean Squared Error (fractional optimizer): %f\n', mse_frac);