NoiseFs = 22050;
NoiseDur = 2;
Noise = randn(NoiseFs * NoiseDur,1);
sound(Noise,NoiseFs);




%%

Pfreq=400;
Fp= Pfreq./(NoiseFs/2);
Sfreq= 1000;
Fst= Sfreq./(NoiseFs/2);
Ap=1;
Ast=80;
h = fdesign('Fp,Fst,Ap,Ast',Fp,Fst,Ap,Ast).lowpass;