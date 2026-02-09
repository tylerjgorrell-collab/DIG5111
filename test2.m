%test2
% Read in the standard demo wave file that ships with MATLAB.
[y, fs] = audioread('pluck.wav');
soundsc(y, fs);  % Here is where we actually play the music from the speakers.
% Plot the original waveform.
subplot(2, 1, 1);
plot(y, 'b-');
grid on;
drawnow;
% Give it time for it to finish playing the original tune
% while asking user if they want to play the noisy one.
message = sprintf('Do you want to play again?');
reply = questdlg(message, 'Play tune?', 'Yes', 'No', 'Yes');
if strcmpi(reply, 'No')
  % User said No, so exit.
  return;
end
% Define the noise amplitude.  Change this to increate or decrease the noise.
noiseAmplitude = 0.1;
% Add noise to every element of the sound waveform.
yNoisy = y + noiseAmplitude * rand(length(y), 1) - noiseAmplitude/2;
% Plot the noisy waveform below the original one.
subplot(2, 1, 2);
plot(yNoisy, 'b-');
grid on;
drawnow;
% Here is where we actually play the music from the speakers.
soundsc(yNoisy, fs);