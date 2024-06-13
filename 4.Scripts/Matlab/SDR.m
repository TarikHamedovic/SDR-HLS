% fs = 80Mhz -> Ts = 1.25e^-8s FPGA Sampling Frequency

%% SDR PART 1 %%
% SDRPart1.slx Simulink Model file %
sim('SDRPart1.slx');

sin_out = out.cos_out.signals.values;
cos_out = out.sin_out.signals.values;
time1 = out.tout;

decimation_ratio = 4096;
sin_out_padded = paddedVectorForCIC(sin_out, 4096); 
cos_out_padded = paddedVectorForCIC(cos_out, 4096); 
%% SDR PART 2 %%
% SDRPart2.slx Simulink Model file %
sim('SDRPart2.slx');

CICOut1 = out.CICOut1.signals.values;
CICOut2 = out.CICOut2.signals.values;
AMDemod = out.AMDemod.signals.values;
time2 = out.tout;

ISquare = double(CICOut1).^2;
QSquare = double(CICOut2).^2;

magnitude = sqrt(ISquare + QSquare);
%% SDR PART 3 %%
% SDRPart3.slx Simulink Model file %
sim('SDRPart3.slx');



