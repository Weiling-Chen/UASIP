% Please download MatLab tool package 'matlabPyrTools'
clc;
clear all;
addpath('./matlabPyrTools')
savepath

% Model loading
load svrModel.mat

% Replace the path with your image path 
Test_img = imread('./test_img/32.bmp');   % 32_noisy_0.9.bmp  32.bmp

% Quality prediction
score = UASIP_score(svrModel, Test_img);
disp(['Quality Score: ',num2str(score)]);
