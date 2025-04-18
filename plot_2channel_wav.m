%% plot .wav file




% [audioData, Fs] = audioread('myRecording_1.wav');  % Fs = sampling rate

[audioData, Fs] = audioread('running_outside_20ms.wav');


t = (0:length(audioData)-1) / Fs;  % Time vector in seconds


figure;
plot(t, audioData(:,1), 'r');  % Left channel in red
hold on;
% plot(t, audioData(:,2), 'b');  % Right channel in blue
% xlabel('Time (s)');
ylabel('Amplitude');
title('Stereo Audio Waveform');
legend('Channel 1 (Left)', 'Channel 2 (Right)');
grid on;
