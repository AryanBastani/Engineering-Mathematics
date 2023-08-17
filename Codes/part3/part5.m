% Define the sampling period
T = 0.001;

% Define the time range
time_range = -2:T:2;

% Define the Dirac delta function
dirac_delta = dirac(time_range);

inf_indices = dirac_delta == Inf;
dirac_delta(inf_indices) = 1;

% Plot the function
plot(time_range, dirac_delta);

% Add axis labels and title
xlabel('Time (s)');
ylabel('Amplitude');
title('Dirac Delta Function');
grid on;