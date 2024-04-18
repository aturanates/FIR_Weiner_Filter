clc;
clear all;
close all;
load('sindata.mat');
coeff0 = 0;
coeff1 = 0;
coeff2 = 0;
coeff3 = 0;
coeff4 = 0;
coeff5 = 0;
coeff6 = 0;
index = 1;

while index <= 7
    if index == 1
        input_val = 4 * (cos(2*pi*(index-1)/16) + 0.01) * cos((2*pi*(index-1))/16);
    else
        input_val = 4 * (cos(2*pi*(index-1)/16) + 0.01 * 1) * cos((2*pi*(index-1))/16);
    end
    coeff0 = coeff0 + input_val;
    index = index + 1;
end

index = 1;
while index <= 7
    if index == 2
        input_val1 = 4 * (cos(2*pi*(index-2)/16) + 0.01) * cos((2*pi*(index-2))/16);
    else
        input_val1 = 4 * (cos(2*pi*(index-2)/16) + 0.01 * 1) * cos((2*pi*(index-2))/16);
    end
    coeff1 = coeff1 + input_val1;
    index = index + 1;
end

index = 1;
while index <= 7
    if index == 3
        input_val2 = 4 * (cos(2*pi*(index-3)/16) + 0.01) * cos((2*pi*(index-3))/16);
    else
        input_val2 = 4 * (cos(2*pi*(index-3)/16) + 0.01 * 1) * cos((2*pi*(index-3))/16);
    end
    coeff2 = coeff2 + input_val2;
    index = index + 1;
end

index = 1;
while index <= 7
    if index == 4
        input_val3 = 4 *(cos(2*pi*(index-4)/16) + 0.01) * cos((2*pi*(index-4))/16);
    else
        input_val3 = 4 *(cos(2*pi*(index-4)/16) + 0.01 * 1) * cos((2*pi*(index-4))/16);
    end
    coeff3 = coeff3 + input_val3;
    index = index + 1;
end

index = 1;
while index <= 7
    if index == 5
        input_val4 = 4 * (cos(2*pi*(index-5)/16) + 0.01) * cos((2*pi*(index-5))/16);
    else
        input_val4 = 4 * (cos(2*pi*(index-5)/16) + 0.01 * 1) * cos((2*pi*(index-5))/16);
    end
    coeff4 = coeff4 + input_val4;
    index = index + 1;
end

index = 1;
while index <= 7
    if index == 6
        input_val5 = 4 * (cos(2*pi*(index-6)/16) + 0.01) * cos((2*pi*(index-6))/16);
    else
        input_val5 = 4 * (cos(2*pi*(index-6)/16) + 0.01 * 1) * cos((2*pi*(index-6))/16);
    end
    coeff5 = coeff5 + input_val5;
    index = index + 1;
end

index = 1;
while index <= 7
    if index == 6
        input_val6 = 4 * (cos(2*pi*(index-7)/16) + 0.01) * cos((2*pi*(index-7))/16);
    else
        input_val6 = 4 * (cos(2*pi*(index-7)/16) + 0.01 * 1) * cos((2*pi*(index-7))/16);
    end
    coeff6 = coeff6 + input_val6;
    index = index + 1;
end

fprintf('FIR Wiener Filter Coefficients \n');
fprintf('\n h[0] = %.3f \n', coeff0);
fprintf('\n h[1] = %.3f \n', coeff1);
fprintf('\n h[2] = %.3f \n', coeff2);
fprintf('\n h[3] = %.3f \n', coeff3);
fprintf('\n h[4] = %.3f \n', coeff4);
fprintf('\n h[5] = %.3f \n', coeff5);
fprintf('\n h[6] = %.3f \n', coeff6);

% Plot FIR Wiener Filter Coefficients
stem(0:6, [coeff0, coeff1, coeff2, coeff3, coeff4, coeff5, coeff6]);
title('FIR Wiener Filter Coefficients - 1901022033');
xlabel('Coefficient Index');
ylabel('Coefficient Values');
grid on;

% Assuming Y[n] is already defined or loaded from 'sindata.mat'
% If not, you may need to load or define it before proceeding.
% Filter Y[n] with the obtained FIR filter
X_hat = filter([coeff0, coeff1, coeff2, coeff3, coeff4, coeff5, coeff6], 1, Y);

% Plot Y[n]
figure;
subplot(2,1,1);
plot(Y);
title('Y[n] - 1901022033');
xlabel('Sample Index');
ylabel('Y[n]');

% Plot X_hat[n]
subplot(2,1,2);
plot(X_hat);
title('X̂[n] (Estimate) - 1901022033');
xlabel('Sample Index');
ylabel('X̂[n]');
