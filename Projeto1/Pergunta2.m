theta = pi/6;%  ngulo θ
z = exp(1i*theta);% Cálculo do número complexo z = e^(i*theta)
cos_theta=(exp(1i*theta)+exp(-1i *theta))/2;% Cálculo cos(theta)
exp_menos_theta=exp(-1i *theta);
figure(3)% Representação do cos(theta)
compass(exp_menos_theta, 'r'); hold on
compass(z,'b');
compass(cos_theta, 'k');
title("Cosseno");
%Calcular sen(theta)
figure(4)
sen_theta=((exp(1i*theta)- exp(-1i * theta))/2i)*1i;
%Representar sen(theta)
figure(4)
compass(exp_menos_theta, 'b'); hold on
compass(z,'r');
compass(sen_theta, 'k');
title("Seno");