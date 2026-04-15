% https://github.com/Renatovela-ctrl/tarea2_espaciodeestados_matrizdetransferencia
% Tarea 2: Cálculo de G(s) 
% Método: G(s) = C * inv(s*I - A) * B + D
syms s
clc;

% Definición de matrices del espacio de estados
A = [0 1 0; 0 0 1; -5 -25 -5];
B = [0; 25; -120];
C = [1 0 0];
D = 0;

% Cálculo directo usando la inversa simbólica
% simplify() organiza el numerador y denominador en polinomios
G = simplify(C * inv(s*eye(3) - A) * B + D);
% para usarlo como funcion de transferencia
[n, d] = numden(G);
G_tf = tf(sym2poly(n), sym2poly(d))

% Resultado en consola
disp('Objeto de transferencia del Toolbox:');
display(G_tf);
