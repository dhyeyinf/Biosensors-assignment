R = 1e3;              % 1 kOhm
C = 1e-6;             % 1 uF
L = 10e-3;            % 10 mH
s = tf('s');
Z4 = R + 1/(s*C);
figure;
bode(Z4);
title('Bode Plot: Series RC');
grid on;
figure;
nyquist(Z4);
title('Nyquist Plot: Series RC');
grid on;
