clc;
clear all;
close all;

    A_c=2;     % Carrier amplitude
    f_c=0.5;   % Carrier frequency
    A_m=0.5;   % Message signal amplitude
    f_m=0.05;  % Message signal frequency
    F_s=100;   % Sampling rate/frequency
    m=1;       % Amplitude Sensitivity

    t=[0:0.1:50];                % defining the time range & disseminating it into samples
    c_t=A_c*cos(2*pi*f_c*t);     % defining the carrier signal wave
    m_t=A_m*cos(2*pi*f_m*t);     % defining the message signal
    s_t=c_t.*(1+m*m_t);          % Amplitude Modulated wave, according to the standard definition

    subplot(3,1,1);             % Divide the figure into 3 rows, 1 column, and use the 1st section
    plot(t, m_t);                  % Plotting the message signal wave
    ylabel('Message signal, m(t)');

    subplot(3,1,2);             % Divide the figure into 3 rows, 1 column, and use the 2nd section
    plot(t, c_t);                  % Plotting the carrier signal wave
    ylabel('Carrier Signal, c(t)');

    subplot(3,1,3);             % Divide the figure into 3 rows, 1 column, and use the 3rd section
    plot(t,s_t);                  % Plotting the amplitude modulated wave
    ylabel('AM signal, s(t)');