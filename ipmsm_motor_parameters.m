% 2019.12.29 written by denchu
% dtanaka314@gmail.com
%
% IPMSM vector control model
% 
close all;
clear;

T_PWM = 0.0005; % [sec]
N_duty = 16; % [-]
f_PWM = 1/T_PWM; % [Hz]

T_stop = 150.0; % [sec]
T_step = T_PWM; % [sec]

N_pole = 2;
Ld = 5.66e-3; % [H]
Lq = 17.0e-3; % [H]
Rs = 0.1; % [Ohm]
Phi_a = 136.5e-3; % [Wb]

I_max = 30; % [A]
V_max = 24; % [V]

J = 0.25; % [kg*m^2]

Kp = 0.500; % [-]
Ki = 0.500; % [-]

SLCT_mode = 1;
% 0:(I)最大トルク/電流制御->(II)最大トルク/誘起電圧制御
% 1:Id=0制御
% 2:(I)最大トルク/電流制御

if (Phi_a - Ld*I_max > 0)
    Flag_iii_mode_enable = 0;
else
    Flag_iii_mode_enable = 1;
end

T_sample = 0.1;
