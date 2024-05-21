%%
%Probleme 1
Num=[4.41];
Den=[1 7 53.41];
figure;
step(Num,Den)

Num2=[4410];
Den2=[1 7 4459];
figure;
step(Num2,Den2);

Num3=[44.1 4410];
Den3=[1 51.1 4459];
figure;
step(Num3,Den3);
%%
Num=[2*7.5661];
Den=[1 2 2*7.5661];
figure;
step(Num,Den);

Num2=[2];
Den2=[1 2+2*1.2951 2*7.5661];
figure;
step(Num2,Den2);

%%
%Boucle Ouverte
Num=[480];
Den=[1 10 30 80 344 0];
figure;
step(Num,Den)

%Boucle Fermer
Num1=[480];
Den1=[1 10 30 80 344 480];
figure;
step(Num1,Den1);

%%
Den=[1 62 120];
roots(Den)

%%
Num=[53.4580*0.9];
Den=[1 6.67 53.4580];
step(Num,Den);

%%
Num=[24.5441];
Den=[1 4 24.5441];
step(Num,Den);

%%
Num=[4000];
Den=[1 34 380 2000];
margin(Num,Den);

%%
Num=[17756 73371.34];
Den=[1 122.341 5907.464 91120 73371.31];
step(Num,Den);

%%
Num=[100];
Den=[1 136 3600 0];
margin(Num,Den);





