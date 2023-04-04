 % Definir constantes y variables
T = 333;                % Temperatura (K)
R = 8.314;              % Constante de los gases ideales (J/mol*K)
F = 96485;              % Constante de Faraday (C/mol)
n = 2;                  % Número de electrones transferidos
alpha = 1;
alpha2 = 0.5;
alpha3 = 1.5;% Factor de transferencia de carga
E0 = 1.235;% Potencial de celda estándar (V)
E01 = 1.233; % P = 200 kPa
E02 = 1.234; % P = 300 kPa
E03 = 1.235; % P = 101.3 kP
i0 = 3e-6;              % Corriente de intercambio de electrones (A)
i01 = 0.00003;
i02 = 0.000003;
i03 = 0.0000003;
iL = 1.6;              % Corriente límite (A)
iL1 = 2;
iL2 = 1.6;
iL3 = 1.2;
i_Loss = 0.002;
Ri = 0.15;              % Resistencia interna (ohm)
Ri1 = 0.1;
Ri2 = 0.15;
Ri3 = 0.2;

T1 = 343;
T2 = 353;
T3 = 363;
T4 = 373;
T5 = 383;
T6 = 393;
T7 = 403;
T8 = 413;
E04 = 1.253;
E05 = 1.254;
E06 = 1.255;
E07 = 1.256;
E08 = 1.257;
E09 = 1.258;
E010 = 1.259;
E011 = 1.26;
% Definir rango de corriente a graficar
i = linspace(0, 0.2, 1000);    % Rango de corriente (A)

% Calcular potencial de celda
Ecell = E0 - (R*T)./(F*alpha)*log((i+i_Loss)./(i0)) - (R*T)./(n*F)*log(iL./(iL-i)) - i.*Ri;
Ecell2 = E0 - (R*T)./(F*alpha2)*log((i+i_Loss)./(i0)) - (R*T)./(n*F)*log(iL./(iL-i)) - i.*Ri;
Ecell3 = E0 - (R*T)./(F*alpha3)*log((i+i_Loss)./(i0)) - (R*T)./(n*F)*log(iL./(iL-i)) - i.*Ri;
Ecell4 = E0 - (R*T)./(F*alpha)*log((i+i_Loss)./(i01)) - (R*T)./(n*F)*log(iL./(iL-i)) - i.*Ri;
Ecell5 = E0 - (R*T)./(F*alpha)*log((i+i_Loss)./(i02)) - (R*T)./(n*F)*log(iL./(iL-i)) - i.*Ri;
Ecell6 = E0 - (R*T)./(F*alpha)*log((i+i_Loss)./(i03)) - (R*T)./(n*F)*log(iL./(iL-i)) - i.*Ri;
Ecell7 = E0 - (R*T)./(F*alpha)*log((i+i_Loss)./(i0)) - (R*T)./(n*F)*log(iL./(iL-i)) - i.*Ri1;
Ecell8 = E0 - (R*T)./(F*alpha)*log((i+i_Loss)./(i0)) - (R*T)./(n*F)*log(iL./(iL-i)) - i.*Ri2;
Ecell9 = E0 - (R*T)./(F*alpha)*log((i+i_Loss)./(i0)) - (R*T)./(n*F)*log(iL./(iL-i)) - i.*Ri3;
Ecell10 = E0 - (R*T)./(F*alpha)*log((i+i_Loss)./(i0)) - (R*T)./(n*F)*log(iL1./(iL1-i)) - i.*Ri;
Ecell11 = E0 - (R*T)./(F*alpha)*log((i+i_Loss)./(i0)) - (R*T)./(n*F)*log(iL2./(iL2-i)) - i.*Ri;
Ecell12 = E0 - (R*T)./(F*alpha)*log((i+i_Loss)./(i0)) - (R*T)./(n*F)*log(iL3./(iL3-i)) - i.*Ri;
Ecell13 = E01 - (R*T)./(F*alpha)*log((i+i_Loss)./(i0)) - (R*T)./(n*F)*log(iL./(iL-i)) - i.*Ri;
Ecell14 = E02 - (R*T)./(F*alpha)*log((i+i_Loss)./(i0)) - (R*T)./(n*F)*log(iL./(iL-i)) - i.*Ri;
Ecell15 = E03 - (R*T)./(F*alpha)*log((i+i_Loss)./(i0)) - (R*T)./(n*F)*log(iL./(iL-i)) - i.*Ri;
Ecell16 = E04 - (R*T1)./(F*alpha)*log((i+i_Loss)./(i0)) - (R*T1)./(n*F)*log(iL./(iL-i)) - i.*Ri;
Ecell17 = E05 - (R*T2)./(F*alpha)*log((i+i_Loss)./(i0)) - (R*T2)./(n*F)*log(iL./(iL-i)) - i.*Ri;
Ecell18 = E06 - (R*T3)./(F*alpha)*log((i+i_Loss)./(i0)) - (R*T3)./(n*F)*log(iL./(iL-i)) - i.*Ri;
Ecell19 = E07 - (R*T4)./(F*alpha)*log((i+i_Loss)./(i0)) - (R*T4)./(n*F)*log(iL./(iL-i)) - i.*Ri;
Ecell20 = E08 - (R*T5)./(F*alpha)*log((i+i_Loss)./(i0)) - (R*T5)./(n*F)*log(iL./(iL-i)) - i.*Ri;
Ecell21 = E09 - (R*T6)./(F*alpha)*log((i+i_Loss)./(i0)) - (R*T6)./(n*F)*log(iL./(iL-i)) - i.*Ri;
Ecell22 = E010 - (R*T7)./(F*alpha)*log((i+i_Loss)./(i0)) - (R*T7)./(n*F)*log(iL./(iL-i)) - i.*Ri;
Ecell23 = E011 - (R*T8)./(F*alpha)*log((i+i_Loss)./(i0)) - (R*T8)./(n*F)*log(iL./(iL-i)) - i.*Ri;
% Graficar E vs i
figure (1)
plot(i, Ecell, 'LineWidth', 2);
xlabel('Corriente (A)', 'FontSize', 12);
ylabel('Potencial de celda (V)', 'FontSize', 12);
title('Curva E vs i apartado a', 'FontSize', 14);
grid on;

figure (2)
plot(i, Ecell, 'LineWidth', 2);
hold on;
plot(i, Ecell2, 'LineWidth', 2);
plot(i, Ecell3, 'LineWidth', 2);
hold off;
xlabel('Corriente (A)', 'FontSize', 12);
ylabel('Potencial de celda (V)', 'FontSize', 12);
title('Curva E vs i apartado a', 'FontSize', 14);
grid on;

figure (3)
plot(i, Ecell, 'LineWidth', 2);
hold on;
plot(i, Ecell4, 'LineWidth', 2);
plot(i, Ecell5, 'LineWidth', 2);
plot(i, Ecell6, 'LineWidth',2);
hold off;
xlabel('Corriente (A)', 'FontSize', 12);
ylabel('Potencial de celda (V)', 'FontSize', 12);
title('Curva E vs i apartado b', 'FontSize', 14);
grid on;

figure (4)
plot(i, Ecell, 'LineWidth', 2);
hold on;
plot(i, Ecell7, 'LineWidth', 2);
plot(i, Ecell8, 'LineWidth', 2);
plot(i, Ecell9, 'LineWidth',2);
hold off;
xlabel('Corriente (A)', 'FontSize', 12);
ylabel('Potencial de celda (V)', 'FontSize', 12);
title('Curva E vs i apartado c', 'FontSize', 14);
grid on;

figure (5)
plot(i, Ecell, 'LineWidth', 2);
hold on;
plot(i, Ecell10, 'LineWidth', 2);
plot(i, Ecell11, 'LineWidth', 2);
plot(i, Ecell12, 'LineWidth',2);
hold off;
xlabel('Corriente (A)', 'FontSize', 12);
ylabel('Potencial de celda (V)', 'FontSize', 12);
title('Curva E vs i apartado d', 'FontSize', 14);
grid on;

figure (5)
plot(i, Ecell, 'LineWidth', 2);
hold on;
plot(i, Ecell13, 'LineWidth', 2);
plot(i, Ecell14, 'LineWidth', 2);
plot(i, Ecell15, 'LineWidth',2);
hold off;
xlabel('Corriente (A)', 'FontSize', 12);
ylabel('Potencial de celda (V)', 'FontSize', 12);
title('Curva E vs i apartado e', 'FontSize', 14);
grid on;

figure (6)
plot(i, Ecell, 'LineWidth', 2);
hold on;
plot(i, Ecell16, 'LineWidth', 2);
plot(i, Ecell17, 'LineWidth', 2);
plot(i, Ecell18, 'LineWidth',2);
plot(i, Ecell19, 'LineWidth', 2);
plot(i, Ecell20, 'LineWidth', 2);
plot(i, Ecell21, 'LineWidth',2);
plot(i, Ecell22, 'LineWidth', 2);
plot(i, Ecell23, 'LineWidth', 2);
hold off;
xlabel('Corriente (A)', 'FontSize', 12);
ylabel('Potencial de celda (V)', 'FontSize', 12);
title('Curva E vs i apartado e', 'FontSize', 14);
grid on;

