R = 1e3;              % 1 kOhm
C = 1e-6;             % 1 uF
L = 10e-3;            % 10 mH
s = tf('s');
Z_RC_parallel = 1/(1/R + s*C);
Z7 = R + 2*Z_RC_parallel;   % Two RC in parallel
figure;
bode(Z7);
title('Bode Plot: R in Series with 2 RC Parallel');
grid on;
figure;
nyquist(Z7);
title('Nyquist Plot: R in Series with 2 RC Parallel');
grid on;
