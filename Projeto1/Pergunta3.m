%a)
f=@(z) cos(z)+1; %Função do enunciado
%Criação de uma matriz com os valores de x,y
[x,y]=meshgrid(-2*pi:0.01:2*pi,-3:0.01:3); 
z=x+1i*y;
fz=f(z);
abs_fz=abs(fz); %Cálculo do módulo de f(z)
figure;
surf(x,y,abs_fz, 'EdgeColor', 'none');%Construção do gráfico
colormap(jet);
hold on;
contourf(x,y,abs_fz,10,'LineColor','none');
hold off;
xlabel('Real(z)')
            ylabel('Imag(z)')
zlabel('|f(z)|')
%b)
y_range=-0.1:0.01:0.1;  %Definição dos intervalos
x_range=-2*pi:0.01:2*pi;
absfz=zeros(length(y_range), length(x_range)); %Inicialização de uma matriz de 0´s para armazenar os valores de |f(z)|
for i=1:length(y_range)  %Cálculo dos valores do módulo da função para cada iteração
   z=x_range+1i*y_range(i);
   fz2=f(z);
   absfz(i,:)=abs(fz2);
end
figure;
surf(x_range, y_range, absfz, 'EdgeColor', 'none');
colormap(jet);
colorbar;
xlabel('Real(z)')
ylabel('Imag(z)')
zlabel('|f(z)|')