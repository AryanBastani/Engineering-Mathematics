% Define the time range
t = 0:1/1000:2-1/1000;

% Define the function
f = ones(size(t));

% Plot the function
plot(t,f);
xlabel('Time (s)');
ylabel('Amplitude');
title('f(x) = 1');