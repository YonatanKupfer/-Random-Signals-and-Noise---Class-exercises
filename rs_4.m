N = 10000;
x1 = normrnd(0, 1, [N, 1]);
x2 = normrnd(0, 1, [N, 1]);
x = [x1, x2];

figure;
hist3(x, [20, 20], 'CDataMode', 'auto', 'FaceColor', 'interp');
xlabel('X1');
ylabel('X2');
zlabel('Frequency');
title('2D Histogram of x1 and x2');
colorbar;
