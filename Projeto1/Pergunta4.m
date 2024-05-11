B = 50;
x = linspace(-100, 100, 1000); %Criação de uma vetor de números igualmente espaçados
f = 1./(1 + 1i*x/B);
% Plot do módulo
figure;
plot(x, abs(f), 'b-', 'LineWidth', 1);
hold on;
x_points = x(1:25:end);
plot(x_points, abs(f(1:25:end)), 'ks', 'MarkerSize', 5, 'MarkerFaceColor', 'k');
grid on;
title('|f(x)|');
xlabel('x');
ylabel('|f(x)|');
% Cálculo da linha de meia potência
[max_absf, idx_max_absf] = max(abs(f));
half_max_absf = max_absf/sqrt(2);
idx_half_max_absf = find(abs(f) > half_max_absf, 1, 'first');
x_half_max_absf = interp1(abs(idx_half_max_absf-1:idx_half_max_absf+1), x(idx_half_max_absf-1:idx_half_max_absf+1), half_max_absf);
% Adiciona linha de meia potência ao gráfico
plot([x(1), x(end)], [half_max_absf, half_max_absf], 'k', 'LineWidth', 1);
text(x_half_max_absf+0.1, half_max_absf-0.1, ['x = ' num2str(x_half_max_absf, 2)], 'HorizontalAlignment', 'left', 'VerticalAlignment', 'top');
legend('Usando a função abs','Usando a formula','Linha de meia potência','Location','northeast');
% Plot do argumento
figure;
plot(x, angle(f));
grid on;
title('Argumento de f(x)');
xlabel('x');
ylabel('arg(f(x))');
hold on;
% Plot da fórmula do argumento
arg_formula = atan(-x/B);
plot(x_points, angle(f(1:25:end)), 'ks', 'MarkerSize', 5, 'MarkerFaceColor', 'k');
legend('Usando a função angle','Usando a formula','Location', 'northeast');