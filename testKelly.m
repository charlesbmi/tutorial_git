% ACM/CS/IDS 157 : Statistical Inference
% PS5, Problem 4.
%------------------------------------------------------------------
clc; clear; close all;
A=[7.58, 8.52, 8.01, 7.99, 7.93, 7.89, 7.85, 7.82, 7.80];
B=[7.85, 7.73, 8.53, 7.40, 7.35, 7.30, 7.27, 7.27, 7.23];
Z=[A,B]; 
N=length(Z);
sObs=abs(mean(A)-mean(B));   % observed value of the test statistic
K=10^5; % number of permutations used 
I=zeros(1,K);
for k=1:K;
    p=randperm(N);  % random permuation
    Zp=Z(p);        % permuted data
    s=abs(mean(Zp(1:N/2))-mean(Zp(N/2+1:N)));
    if s>sObs
        I(k)=1;
    end
end
pValue=mean(I);

disp('hello Dolly')