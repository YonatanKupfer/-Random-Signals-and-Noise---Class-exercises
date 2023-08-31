% Parameters
numSamples = 10000;
sampleSize = 10000;
theoretical_mean = 50;
theoretical_var = (100^2) / 12;

% Generate random samples from a uniform distribution
uniformMin = 0;
uniformMax = 100;
samples = rand(sampleSize, numSamples) * 100;

% Calculate the sample means
sampleMeans = mean(samples);
variance_original = var(sampleMeans);
scaling_factor = sqrt(1 / variance_original);
N = sampleSize;
transformed_sampleMeans = sqrt(N) * (sampleMeans - theoretical_mean) / (sqrt(variance_original) * ((uniformMax^2 - 1) / 12));

% Plot the distribution of sample means
figure;
histogram(transformed_sampleMeans, 'Normalization', 'pdf');
xlabel('Transformed Sample Mean');
ylabel('Probability Density');
title('Distribution of Transformed Sample Means');

mean_transformed = mean(transformed_sampleMeans);
variance_transformed = var(transformed_sampleMeans);

disp(['Mean of transformed_sampleMeans: ' num2str(mean_transformed)]);
disp(['Variance of transformed_sampleMeans: ' num2str(variance_transformed)]);

