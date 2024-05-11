%Prob 4

% Parâmetros do sinal
T = 1; % Período
A = 1; % Amplitude
T_janela=4;
n=1024;

% Definir vetor de tempo
t =linspace(0,T_janela,n);

% Número de termos da série de Fourier
N = [1, 2, 3, 4, 10];

% Função dente-de-serra
dente_de_serra = A * sawtooth(2*pi*t/T);

% Inicializar matriz para armazenar os sinais aproximados
x_N = zeros(length(N), length(t));

% Calcular os sinais aproximados para cada valor de N
for i = 1:length(N)
    x_N(i, :) = A/100;
    for n = 1:N(i)
        x_N(i, :) = x_N(i, :) - (A/(pi/2)) * (1/n) * sin(2*pi*n/T * t );
    end
end

% Plot dos sinais aproximados
figure;
for i = 1:length(N)
    subplot(length(N), 1, i);
      plot(t, dente_de_serra, 'b'); hold on;
    plot(t, x_N(i, :));
    xlim([0, T_janela ]);      % Define o intervalo do eixo x
    ylim([-1, 1]);  % Define o intervalo do eixo y
    xlabel('Tempo');
    ylabel('Amplitude');
    title(['N = ', num2str(N(i))]);
end
