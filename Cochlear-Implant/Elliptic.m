function Hd = Elliptic(bottom,top)
%ELLIPTIC Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.4 and DSP System Toolbox 9.6.
% Generated on: 11-Jul-2019 22:14:12

% Elliptic Bandpass filter designed using FDESIGN.BANDPASS.

% All frequency values are in Hz.
Fs = 16000;  % Sampling Frequency

N      = 10;             % Order
Fpass1 = bottom;           % First Passband Frequency
Fpass2 = top;           % Second Passband Frequency
Apass  = 0.45757490561;  % Passband Ripple (dB)
Astop  = 30;             % Stopband Attenuation (dB)

% Construct an FDESIGN object and call its ELLIP method.
h  = fdesign.bandpass('N,Fp1,Fp2,Ast1,Ap,Ast2', N, Fpass1, Fpass2, ...
                      Astop, Apass, Astop, Fs);
Hd = design(h, 'ellip');

% [EOF]
