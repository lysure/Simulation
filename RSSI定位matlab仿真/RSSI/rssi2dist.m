function d=rssi2dist(RSSI)
%~~~~~~~~~~~~~~~~~~~~~~Regular Model~~~~~~~~~~~~~~~
%   In this model, the radio range is a circle
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% ReceivedSignalStrength=SendingPower-PathLoss
% e.g, RSS=Pt-Pl(d0)-10*η*log10(dist/d0)
% Pt:transmit power
% pl(d0):the pass loss for a reference distance of d0
% ηis the path loss exponent
% above parameters are saved in '../Parameters_Of_Models.mat'
% dist:distance between sender and receiver(m)
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% typical value:Pt=0-4dBm(max),Pl(d0)=55dB(d0=1m),η(2~4)=4(indoor,outdoor)
 PtW = 10e9; %单位是W
    Pt = 10*log10(PtW); %单位是dB
    d0=1;
    n=3;
    Pl_d0=30;
    d=d0*10.^((Pt-Pl_d0-RSSI)./(10*n));
end