% Definição de f(z)
f = @(z) 1./(2 * pi * z);
% Definição do ponto central aleatório
xo = -2 + 4 * rand();
yo = -2 + 4 * rand();
z0 = xo + 1i*yo;
% Raio da circunferência
r = 2;
% Vetor de ângulos
theta = linspace(0, 2*pi, 1000);
% Criação do caminho gamma(t) como uma circunferência
gamma = z0 + r * exp(1i * theta);
% Representação do caminho gamma(t)
figure()
plot(gamma, 'b');
axis([-5 5 -5 5]); % Limites dos eixos x e y
hold on; % Permite sobrepor o novo ponto ao gráfico anterior
plot(0, 0, 'ko', 'MarkerSize', 5, 'LineWidth', 2); % Plota o ponto (0,0)
axis equal;
grid on;
xlabel('Parte Real')
ylabel('Parte Imaginária')
% Cálculo da integral curvilínea usando a função integral
resultado = integral(f, gamma(1), gamma(end));
% Exibição do resultado da integral
disp(resultado);
