% Sinusoidal synthesis
% Revised Nov 2010, Yi-Wen Liu
% Revised Feb 2017 for Flipped classroom preparation.
%
% EE6641: Analysis and synthesis of audio signals
% National Tsing Hua University
% This function should take a list of the amplitude, frequency (amplitude in
% dB and frequency in rad/sample) and intial phase of sinusoidal components
% and calculate a frame of the output signal which is the sum of sinusoidal components.
% 
% Synopsis:
% [y]: the output signal
% finalState:   the final state matrix, which will be used as the initial state 
%               for the next frame
%
% amps: the list of amplitudes of the sinusoids (dB)
% freqs: the list of frequencies of the sinusoids (rad/sample)
% N: length of the synthesis frame (samples)
% initState: the initial state matrix

function [s,finalstate] = MyAdditivesynth_t(amps,freqs,R,inistate)

phi = inistate(:,1)+(inistate(:,2)+freqs)/2*R;
finalstate(:,3)=phi;
finalstate(:,2)=freqs;
numTracks = size(inistate,1);
s = zeros(2*R,1);
%% Use this double loop to synthesize a frame of the output signal
w=blackman(2*R+1); w=w(1:end-1); % synthesis with 50% overlap using Hann (2017)
w=w(:);
mags = 10.^(amps/20);
nn = 0:length(w)-1;
nn = nn(:);
for kk = 1:numTracks
    s = s + mags(kk)*cos(freqs(kk)*nn+phi(kk));
end
s = s.*w;
