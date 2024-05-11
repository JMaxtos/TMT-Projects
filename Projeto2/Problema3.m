% Parâmetros do sinal
T = 1; % Período
A = 1; % Amplitude
T_janela=8;
n=1024;
% Definir vetor de tempo
Fs = 1000; % Frequência de amostragem
% Tempo
%t = 0:0.001:T;      % Vetor de tempo com passo de 0.001
t=linspace(0,T_janela,n);

% Gerar sinal em dente-de-serra
x = A * sawtooth(2*pi/T*t);

% Calcular os coeficientes de Fourier do sinal
N = length(x); % Número de pontos da transformada
frequency = (-Fs/2:Fs/N:Fs/2-Fs/N); % Vetor de frequências
coefficients = fftshift(fft(x, N));


% Plot do sinal no tempo
subplot(2, 1, 1);
plot(t, x);
ylim([-2, 2]);  % Define o intervalo do eixo y
xlabel('Tempo');
ylabel('Amplitude');
title('Sinal no tempo');

% Plot do espectro de frequência
subplot(2, 1, 2);
plot(frequency/17, abs(coefficients)/1000);
xlabel('Frequência');
ylabel('Magnitude');
title('Espectro de frequência');