z1 = 1 + 2i;%Definição dos números complexos z1 e z2
z2 = 2 + 2i;
z3 = z1 + z2;% Calculando a soma z3 = z1 + z2
% a)  Representação algébrica
figure(1);
plot(0,0,'X',real(z1),imag(z1),'O',real(z2),imag(z2),'O',real(z3),imag(z3),'O');grid on;
%Definição do máximo e do mínimo dos eixos x e y
xlim([min([0,real(z1),real(z2),real(z3)])-1,max([0,real(z1),real(z2),real(z3)])+1])
ylim([min([0,imag(z1),imag(z2),imag(z3)])-1,max([0,imag(z1),imag(z2),imag(z3)])+1])
legend('Origem','z1','z2','z3')%Legenda do gráfico 
title('Representação algébrica')%Título do gráfico
% b)  Representação polar
figure(2)
compass(z3,'b'); hold on; compass(z2,'b'); compass(z1,'b');
title('Representação polar');%Título do gráfico