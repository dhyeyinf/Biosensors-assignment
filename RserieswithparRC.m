R = 1e3;              % 1 kOhm
C = 1e-6;             % 1 uF
L = 10e-3;            % 10 mH
s = tf('s');
Z6 = R + 1/(1/R + s*C);
figure;
bode(Z6);
title('Bode Plot: R in Series with RC Parallel');
grid on;
figure;
nyquist(Z6);
title('Nyquist Plot: R in Series with RC Parallel');
grid on;
