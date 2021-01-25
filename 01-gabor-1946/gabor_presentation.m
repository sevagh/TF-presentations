smallWin = 128;
bigWin = 16384;

[x, fs] = audioread('./el_mestizo.wav');


figure;
spectrogram(x,smallWin,smallWin/2,smallWin*2,fs,"yaxis");
title("window = 128");

figure;
spectrogram(x,bigWin,bigWin/2,bigWin*2,fs,"yaxis");
title("window = 16384");