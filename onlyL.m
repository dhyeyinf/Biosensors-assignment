R = 1e3;              % 1 kOhm
C = 1e-6;             % 1 uF
L = 10e-3;            % 10 mH
s = tf('s');
Z3 = s*L;
figure;
bode(Z3);
title('Bode Plot: Only Inductor');
grid on;
figure;
nyquist(Z3);
title('Nyquist Plot: Only Inductor');
grid on;
