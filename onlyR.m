R = 1e3; % 1 kOhm
f = logspace(0,6,1000);   % Frequency vector from 1 Hz to 1 MHz
mag = R*ones(size(f));    % Magnitude is always R
phase = zeros(size(f));   % Phase is always 0

% Bode magnitude plot manually
figure;
semilogx(f, 20*log10(mag));
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Bode Magnitude: Only Resistor');
grid on;

% Bode phase plot manually
figure;
semilogx(f, phase);
xlabel('Frequency (Hz)');
ylabel('Phase (degrees)');
title('Bode Phase: Only Resistor');
grid on;

% Nyquist plot manually (just a point)
figure;
plot(R, 0, 'ro', 'MarkerSize',12, 'LineWidth',2);
xlabel('Real');
ylabel('Imaginary');
title('Nyquist Plot: Only Resistor');
grid on;
axis([0 R*1.2 -R*0.1 R*0.1]);
