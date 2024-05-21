clear all
close all

M1=5000;
M2=50000;
G=6.67*10^-11;
D=2;
distmoy=[];

N=10000;
for i=1:N;
    P1=PointAleatoireSphere();
    P2=PointAleatoireSphere();
    P2=P2+[D 0 0];
    distance=norm(P2-P1);
    dm1=M1/N;
    dm2=M2/N;
    dFg=G*((dm1*dm2)/(distance^2));
    lk(i)=dFg;
    
    distmoy(i)=distance;
end

moydist=sum(distmoy)/N
Fg=G*((M1*M2)/(D^2))
reponse=sum(lk)