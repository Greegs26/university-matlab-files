clear all
close all

v=[0 0 0 0 0];
C=[0.1 0.1;0.9 0.3;0.5 0.5;0.2 0.8;0.8 0.9];
N=1000000; 

x=zeros(1,N); %PREALLOCATE X FOR EFFICIENCY

for i=1:N;
     [minimum,indice]=CafePlusProche(C); 
     x(i)=indice;
     v(indice)=v(indice)+1;
end

v

Cafe1=(v(1)/N)*100
Cafe2=(v(2)/N)*100
Cafe3=(v(3)/N)*100
Cafe4=(v(4)/N)*100
Cafe5=(v(5)/N)*100

% Display percentages
disp(['Cafe1: ', num2str(Cafe1), '%']);
disp(['Cafe2: ', num2str(Cafe2), '%']);
disp(['Cafe3: ', num2str(Cafe3), '%']);
disp(['Cafe4: ', num2str(Cafe4), '%']);
disp(['Cafe5: ', num2str(Cafe5), '%']);

% Create histogram
figure;
histogram(x, 'BinEdges', 0.5:1:5.5);
title('Number of Times Each Cafe was Closest');
xlabel('Cafe Index');
ylabel('Frequency');
xticks(1:5);
grid on;

% Create pie chart with percentage labels
figure;
percentages = [Cafe1, Cafe2, Cafe3, Cafe4, Cafe5];
labels = {'Cafe1', 'Cafe2', 'Cafe3', 'Cafe4', 'Cafe5'};

for i = 1:length(labels)
    labels{i} = sprintf('%s: %.2f%%', labels{i}, percentages(i));
end

pie(percentages, labels);
title('Percentage of Times Each Cafe was Closest');

function[minimum,indice]=CafePlusProche(C)
    a=rand();
    b=rand();
    r = [a b];

    for i=1:5;
        d(i)=norm(r-C(i,:));
    end

[minimum,indice]=min(d);
end




