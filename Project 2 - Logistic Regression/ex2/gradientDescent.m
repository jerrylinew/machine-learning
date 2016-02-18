clc; close all;

theta = [0;0;0];
alpha = 0.001;
iter = 2000000;
J = 0;
grad = [0;0;0];
J_history = zeros(1, iter);

for i = 1:iter
    [J, grad] = costFunction(theta, X, y);
    theta = theta - alpha * grad;
    J_history(i) = J;
end

figure;
plot(1:iter, J_history, '-b');
hold on;
xlabel('Iterations');
ylabel('Cost');