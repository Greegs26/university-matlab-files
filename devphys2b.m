clear all
close all

M=10000;
for i=1:M;
    l=rand();
    m=rand();
    
    C=[0.1 0.1; 0.9 0.3; 0.5 0.5; 0.2 0.8; 0.8 0.9; l m];
    v=[0 0 0 0 0 0];
    N=1000;
    for i=1:N;
        [minimum,indice]=CafePlusProche2(C); 
        x(i)=indice;
        v(indice)=v(indice)+1;
    end
    v;
    Cafe1=(v(1)/N)*100;
    Cafe2=(v(2)/N)*100;
    Cafe3=(v(3)/N)*100;
    Cafe4=(v(4)/N)*100;
    Cafe5=(v(5)/N)*100;
    Cafe6=(v(6)/N)*100;
    if v(6)>v(1) && v(6)>v(2) && v(6)>v(3) && v(6)>v(4) && v(6)>v(5);
        C(end, :)
    end
   
end