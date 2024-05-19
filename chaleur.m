%exercice d'ecoulement de chaleur en 2D
clear all
close all
clc

N=100;
T=zeros(N,N);   %matrice de temperature NxN

%region plus chaude
%================
for i=40:60
    for j=1:N
        T(i,j)=100; %100 degree
    end
end
%================

imagesc(T)

%algorithme d'ecoulement de chaleur
alpha=0.1;
dt=0.1;
dT=zeros(N,N);
for q=1:1000 %boucle sur le temps
    for i=2:(N-1)
        for j=2:(N-1)
            dT(i,j)=alpha*(T(i+1,j)+T(i-1,j)+T(i,j+1)+T(i,j-1)-4*T(i,j))*dt;
        end
    end
    T=T+dT;
    %deleter le heat sync????
    %conditon aux frontieres (systeme isoler)
    T(1,:)=T(2,:);
    T(N,:)=T(N-1,:);
    T(:,1)=T(:,2);
    T(:,N)=T(:,N-1);
    imagesc(T);
%     surf(T);
    drawnow;
end