% Define the sampling frequency
fs = 1000;

% Define the time range
time = 0:1/fs:4-1/fs;

% Define the function
signal = cos(pi*time);

% Calculate the Fourier transform
fourier = fft(signal);

% Calculate the number of samples
num_samples = length(signal);

% Define the frequency range
freq_range = (0:num_samples-1)*(fs/num_samples);

% Plot the magnitude spectrum
plot(freq_range,abs(fourier));

% Set the x-axis limits
xlim([-2000 2000]);

% Add axis labels and title
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Magnitude Spectrum of a Cosine Function');
