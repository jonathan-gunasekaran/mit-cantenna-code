% Record Audio Input


info = audiodevinfo;
disp(info.input);

%%
Fs = 44100;           % Sampling frequency in Hz
nBits = 16;           % Bits per sample
nChannels = 2;        % Mono; use 2 for stereo
deviceID = 1;         % Replace with your actual audio jack input ID

recObj = audiorecorder(Fs, nBits, nChannels, deviceID);


%%

recordblocking(recObj, 40);  % Record for 5 seconds
disp('Recording complete.');



%% Save?

audioData = getaudiodata(recObj);
audiowrite('myRecording_3.wav', audioData, Fs);
