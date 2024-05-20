%%Probleme 2
%a)
clear all
close all

compte=0;
m=1000;
for i=1:m;
    
    jean=[];
    N1=8; %Jean roule 8 fois
    for i=1:N1;
        a=randi([1,6],1);
        jean(i)=a;
    end
    mj=max(jean) %retourne le plus grand nombre rouler par Jean

    robert=[];
    N2=4; %Robert roule 4 fois
%     N2=10; %utilisez pour faire le graphe de la 2
    for i=1:N2;
        b=randi([1,6],1);
        robert(i)=b;
    end
    mr=max(robert) %Retourne le plus grand nombre rouler par Robert
    if mr>=mj; %Compte le nombre de fois que Robert gagne
        compte=compte+1
    end
end
robertprob=(compte/m)*100 %NOTE: PROB QUE ROBERT GAGNE!
jeanprob=100-robertprob