% Parameters
bitStream = [1 0 1 1 0 1 0 0 1]; % Example bit stream
bitDuration = 1; % Duration of each bit in seconds
samplingRate = 100; % Sampling rate in Hz

% Calculate the number of samples per bit
samplesPerBit = samplingRate * bitDuration;

% Generate the time vector
time = 0:(1/samplingRate):(length(bitStream) * bitDuration);

% Initialize the signal vector
signal = zeros(1, length(time));

% Create the NRZ signal
for k = 1:length(bitStream)
    if bitStream(k) == 1
        signal((k-1)*samplesPerBit + 1:k*samplesPerBit) = 1;
    else
        signal((k-1)*samplesPerBit + 1:k*samplesPerBit) = 0;
    end
end

% Plot the signal
figure;
plot(time, signal, 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Unipolar NRZ Line Coding');
axis([0 length(bitStream)*bitDuration -0.1 1.1]); % Adjust axis limits
grid on;