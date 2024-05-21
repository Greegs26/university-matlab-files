%Corps en chute libre avec pas de résistance
clear all
close all

y=100; %Hauteur initiale
m=500; %masse 
g=9.8;
dt=0.01;
v=0; %vitesse initiale
t=0;
xg=[];
yg=[];
a=1.36e-4; %alpha
A=1;
Cd=0.5;
po=1.2;
while y>0
    
    % original function: R=(1/2)*Cd*py*A*v^2;
    R=(1/2)*Cd*3.14*A*v^2; %Force de résistance de l'air
    F=-m*g-R*sign(v); %sign(v) assure que la force R est toujours dans la bonne direction
    a=F/m;
    v=v+a*dt;
    y=y+v*dt;
    xg=[xg t];
    yg=[yg -v];
    t=t+dt;
    scatter(0,y)
    axis([-1 1 0 100]);
    drawnow;

end

plot(xg,yg)
% unsure if error with code, OR if object is reaching Terminal Velocity
% since speed becomes constant (visually)
% I'm expecting this plot to be showing this