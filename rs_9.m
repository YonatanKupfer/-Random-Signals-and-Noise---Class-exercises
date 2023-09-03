% Define parameters
omega = 0.5 * pi; % Random angular frequency
theta = 2 * pi * rand(); % Random theta between 0 and 2*pi
duration = 360; % 1 hour in seconds
sampling_interval = 0.01; % 10 millisecond interval

% Generate time vector
t = 0:sampling_interval:duration;

% Generate the signal
x = cos(omega * t + theta);

% Calculate the average of x(t)
average_x = mean(x);

% Calculate the unbiased cross-correlation
correlation = xcorr(x, 'unbiased');
correlation_time = linspace(-duration, duration, length(correlation));

% Plot the correlation
figure;
plot(correlation_time, correlation);
xlabel('Time (s)');
ylabel('Correlation');
title('Cross-Correlation of x(t)');
grid on;

fprintf('Average of x(t): %.4f\n', average_x);
