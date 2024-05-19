h=0.01;
a=5;
b=15;
t0=a;
y0=exp(t0) - t0 - 1;


n=(b-a)/h;
t=zeros(n,1);

yth=zeros(n,1);
ye=zeros(n,1);
yea=zeros(n,1);

t(1)=t0;
yth(1)=y0;
ye(1)=y0;
yea(1)=y0;

for i=1:n-1
    t(i+1)=t(i)+h;
    yth(i+1)=exp(t(i+1)) - t(i+1) - 1;
    ye(i+1)=ye(i)*(1+h)+t(i)*h;
    yea(i+1)=yea(i)*0.5*(2+2*h+h*h)+0.5*t(i)*h*(2+h)+0.5*h*h;
end

%%plot(t,yth,'b');
hold all;
plot(t,ye,'r');
plot(t,yea,'g');
