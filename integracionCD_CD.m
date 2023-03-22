clc; clear all;

[t, x] = ode45(@CD_CD, [0 0.002], [0 0]);

figure;
subplot(211); plot(t, x(:, 1));
grid on
title("iL");
xlabel("Tiempo");
ylabel("Amperes");

subplot(212); plot(t, x(:, 2));
grid on
title("Vo");
xlabel("Tiempo");
ylabel("Volts");

