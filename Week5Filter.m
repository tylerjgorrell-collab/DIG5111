N = 51;
n=floor(N/2);
Fs = 10000;
f = 500;
fc = pi*f/Fs;
h = fc*sinc(fc*(-n:n));

wind = hamming(length(h));

windowed_sinc = wind.*h;

plot(wind)
hold on
plot (h)
