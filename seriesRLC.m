R = 1e3;              % 1 kOhm
C = 1e-6;             % 1 uF
L = 10e-3;            % 10 mH
s = tf('s');
Z8 = R + s*L + 1/(s*C);
figure;
bode(Z8);
title('Bode Plot: Series RLC');
grid on;
figure;
nyquist(Z8);
title('Nyquist Plot: Series RLC');
grid on;
