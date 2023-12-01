%Membership function for Young People
clear all;
close all;

for k=1:1:1001
	x(k)=(k-1)*0.10;

    if x(k)>=0&x(k)<=50
        y1(k)=0;
    elseif x(k)>50&x(k)<=70
        y1(k)=(x(k)-50)/20;
    else
        y1(k)=1.0;
    end

    if x(k)>=0&x(k)<=25
        y2(k)=1.0;
    elseif x(k)>25&x(k)<=70
        y2(k)=(70-x(k))/45;
    else
        y2(k)=0;
    end
    
    if x(k)>=0&x(k)<=18
        y3(k)=1.0;
    elseif x(k)>18&x(k)<=40
        y3(k)=(40-x(k))/22;
    else
        y3(k)=0;
    end

    if x(k)>=0&x(k)<=18
        y4(k)=0;
    elseif x(k)>18&x(k)<=40
        y4(k)=(x(k)-18)/22;
    else
        y4(k)=1.0;
    end
end
xlabel('X Years');ylabel('Degree of membership');
plot(x,y1);hold on;
plot(x,y2);hold on;
plot(x,y3);hold on;
plot(x,y4);hold on;