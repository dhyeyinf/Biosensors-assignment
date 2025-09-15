R = 1e3;              % 1 kOhm
C = 1e-6;             % 1 uF
L = 10e-3;            % 10 mH
s = tf('s');
Z5 = 1/(1/R + s*C);
figure;
bode(Z5);
title('Bode Plot: Parallel RC');
grid on;
figure;
nyquist(Z5);
title('Nyquist Plot: Parallel RC');
grid on;
