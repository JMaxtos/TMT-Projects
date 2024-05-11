% Parâmetros
T = 1;              % Período
A = 1;              % Amplitude
dutyCycle = 0.5;    % Duty cycle (20%)
T_janela=8; %Limite no eixo dos X;
n=1024; 

% Tempo

t=linspace(0,T_janela,n);
% Sinal no tempo
x = A * square(2*pi*t/T, dutyCycle*100);

% Espectro de frequência
N = length(t);                      % Comprimento do vetor de tempo
f = (-N/2:N/2-1) / T;               % Vetor de frequência
X = abs(fftshift(fft(x))) / N;      % Transformada de Fourier do sinal

% Plot do sinal no tempo
subplot(2,1,1);
plot(t, x, 'b');
xlim([0, T_janela]);      % Define o intervalo do eixo x
ylim([-2, 2]);  % Define o intervalo do eixo y
xlabel('Tempo');ylabel('Amplitude');title('Sinal no tempo');

% Plot do espectro de frequência
subplot(2,1,2);
bar(f *dutyCycle  , X, 'b'); 
plot(f * dutyCycle/4, X, 'b');
xlim([-15 , 15 ]);      % Define o intervalo do eixo x
ylim([0, 0.8]);  % Define o intervalo do eixo y
xlabel('Frequência');ylabel('Amplitude');title('Espectro de Frequência');grid on