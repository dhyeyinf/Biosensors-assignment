R = 1e3;              % 1 kOhm
C = 1e-6;             % 1 uF
L = 10e-3;            % 10 mH
s = tf('s');
Z2 = 1/(s*C);
figure;
bode(Z2);
title('Bode Plot: Only Capacitor');
grid on;
figure;
nyquist(Z2);
title('Nyquist Plot: Only Capacitor');
grid on;
