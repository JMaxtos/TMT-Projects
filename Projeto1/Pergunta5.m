% Definição da função
f = @(z) 1./(2*pi.*z);
% Definição dos pontos do caminho
z0 = 4 + 0i; % Ponto fixo
z1 = complex(rand()*5, rand()*5); % Ponto aleatório no 1º quadrante
z2 = complex(-rand()*5, rand()*5); % Ponto aleatório no 2º quadrante
z3 = complex(-rand()*5, -rand()*5); % Ponto aleatório no 3º quadrante
z4 = complex(rand()*5, -rand()*5); % Ponto aleatório no 4º quadrante
% Criação do caminho fechado de z0 até z0 passando pelos pontos z1, z2, z3 e z4
waypoints = [z0, z1, z2, z3, z4, z0];
figure();
plot(waypoints, 'b');hold on
plot(0, 0, 'ko', 'MarkerSize', 5, 'LineWidth', 2); % Plota o ponto (0,0)
% Definição os limites dos eixos
xlim([-5 5]);
ylim([-5 5]);
%Adiciona legenda e eixos
grid on
title('Integral Curvilíneo')
xlabel('Parte Real')
ylabel('Parte Imaginária')
% Cálculo do integral
resultado = integral(f, z0, z1) + integral(f, z1, z2) + integral(f, z2, z3) + integral(f, z3, z4) + integral(f, z4, z0);
% Representação do resultado
disp(resultado)
