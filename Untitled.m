clc;
clear all;
close all;
load('sindata.mat');
h0 = 0;
h1 = 0;
h2 = 0;
h3 = 0;
h4 = 0;
h5 = 0;
h6 = 0;
i = 1;
while i <= 7
    if i == 1
        x = 4 * (cos(2*pi*(i-1)/16) + 0.01) * cos((2*pi*(i-1))/16);
    else
        x = 4 * (cos(2*pi*(i-1)/16) + 0.01 * 1) * cos((2*pi*(i-1))/16);
    end
        h0 = h0 + x;
        i = i + 1;
end
i = 1;
while i <= 7
    if i == 2
        x1 = 4 * (cos(2*pi*(i-2)/16) + 0.01) * cos((2*pi*(i-2))/16);
    else
        x1 = 4 * (cos(2*pi*(i-2)/16) + 0.01 * 1) * cos((2*pi*(i-2))/16);
    end
        h1 = h1 + x1;
        i = i + 1;
end
i = 1;
while i <= 7
    if i == 3
        x2 = 4 * (cos(2*pi*(i-3)/16) + 0.01) * cos((2*pi*(i-3))/16);
    else
        x2 = 4 * (cos(2*pi*(i-3)/16) + 0.01 * 1) * cos((2*pi*(i-3))/16);
    end
       h2 = h2 + x2;
       i = i + 1;
end
i = 1;
while i <= 7
    if i == 4
        x3 = 4 *(cos(2*pi*(i-4)/16) + 0.01) * cos((2*pi*(i-4))/16);
    else
        x3 = 4 *(cos(2*pi*(i-4)/16) + 0.01 * 1) * cos((2*pi*(i-4))/16);
    end
    h3 = h3 + x3;
    i = i + 1;
end

i = 1;

while i <= 7
    if i == 5
        x4 = 4 * (cos(2*pi*(i-5)/16) + 0.01) * cos((2*pi*(i-5))/16);
    else
        x4 = 4 * (cos(2*pi*(i-5)/16) + 0.01 * 1) * cos((2*pi*(i-5))/16);
    end
    h4 = h4 + x4;
    i = i + 1;
end
i = 1;
while i <= 7
    if i == 6
        x5 = 4 * (cos(2*pi*(i-6)/16) + 0.01) * cos((2*pi*(i-6))/16);
    else
        x5 = 4 * (cos(2*pi*(i-6)/16) + 0.01 * 1) * cos((2*pi*(i-6))/16);
    end
    h5 = h5 + x5;
    i = i + 1;
end
i = 1;
while i <= 7
    if i == 6
        x6 = 4 * (cos(2*pi*(i-7)/16) + 0.01) * cos((2*pi*(i-7))/16);
    else
        x6 = 4 * (cos(2*pi*(i-7)/16) + 0.01 * 1) * cos((2*pi*(i-7))/16);
    end
        h6 = h6 + x6;
        i = i + 1;
end
fprintf('FIR Wiener süzgeç katsayıları \n');
fprintf('\n h[0] = %.3f \n', h0);
fprintf('\n h[1] = %.3f \n', h1);
fprintf('\n h[2] = %.3f \n', h2);
fprintf('\n h[3] = %.3f \n', h3);
fprintf('\n h[4] = %.3f \n', h4);
fprintf('\n h[5] = %.3f \n', h5);
fprintf('\n h[6] = %.3f \n', h6);
% Plot FIR Wiener süzgeç katsayıları
stem(0:6, [h0, h1, h2, h3, h4, h5, h6]);
title('FIR Wiener süzgeç katsayıları-1901022077');
xlabel('Katsayı İndeksi');
ylabel('Katsayı Değerleri');
grid on;
% Assuming Y[n] is already defined or loaded from 'sindata.mat'
% If not, you may need to load or define it before proceeding.
% Filter Y[n] with the obtained FIR filter
X_hat = filter([h0, h1, h2, h3, h4, h5, h6], 1, Y);
% Plot Y[n]
figure;
subplot(2,1,1);
plot(Y);
title('Y[n]-1901022077');
xlabel('Sample Index');
ylabel('Y[n]');
% Plot X_hat[n]
subplot(2,1,2);
plot(X_hat);
title('X̂[n] (Estimate)-1901022077');
xlabel('Sample Index');
ylabel('X̂[n]');