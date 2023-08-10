N=1000;
uniform_values = rand(N, 1);
normal_values = randn(N, 1);
figure;
subplot(2,2,1);
subplot(2, 2, 1);
histogram(uniform_values, 'Normalization', 'probability');
title('Uniform Histogram');
xlabel('Values');

subplot(2, 2, 2);
histogram(normal_values, 'Normalization', 'probability');
title('Normal Histogram');
xlabel('Values');


uniform_sorted = sort(uniform_values);
uniform_cdf = (1:N) / N;

normal_sorted = sort(normal_values);
normal_cdf = (1:N) / N;

subplot(2, 2, 3);
plot(uniform_sorted, uniform_cdf);
title('Uniform CDF');
xlabel('Values');


subplot(2, 2, 4);
plot(normal_sorted, normal_cdf);
title('Normal CDF');
xlabel('Values');

