smallWin = 128;
bigWin = 16384;

[x, fs] = audioread('./el_mestizo.wav');

%figure;
%spectrogram(x,smallWin,smallWin/2,smallWin*2,fs,"yaxis");
%title("window = 128");

%figure;
%spectrogram(x,bigWin,bigWin/2,bigWin*2,fs,"yaxis");
%title("window = 16384");

w1 = gausswin(2048);
w2 = hann(2048);

%figure;
%plot(w); hold on; plot(w2); legend('Gaussian window', 'Hann window');
%title('2048-point windows; Gaussian vs. Hann');
%xlim([0 2048]);

figure;
smallGauss=gausswin(smallWin);
spectrogram(x,smallGauss,smallWin/2,smallWin*2,fs,"yaxis");
title("gausswin = 128");

figure;
bigGauss=gausswin(bigWin);
spectrogram(x,bigGauss,bigWin/2,bigWin*2,fs,"yaxis");
title("gausswin = 16384");