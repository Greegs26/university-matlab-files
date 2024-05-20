%test
%devoir
clear all
close all

N=2000000;
for i=1:N;
    R=6300;
    r1=R*PointAleatoireSphere();
    r2=R*PointAleatoireSphere();

    costheta=dot(r1,r2)/(norm(r1)*norm(r2));
    angle=acos(costheta);

    s=angle*R;
    x(i)=s;

end
moyenne=sum(x)/N

%%
%probleme 2
clear all
close all

N=100000;
for i=1:N;
v=[0 0 0 0 0 0];
count=0;
    while sum(v)<6;
        r = randi([1,6]);
        count=count+1;
        if v(r)==0;
            v(r)=1;          
        end
    
   end
v;
prix=count*10;
x(i)=prix;

end
edges = 60:10:1000;
hist(x,edges)
title("Distribution du prix")
xlabel("Prix")
ylabel("Nombre de résultat")
    
moyenne=sum(x)/N
ecarttype=std(x)



