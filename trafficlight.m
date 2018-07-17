clear all,clc;
%initialize the parameters and prompt the users

% n=input('Please input the number of cars:');
% w=input('Please input the width of the crossroad:');
% p=input('Please input the probability that a cars does not stop at the red light:');
% t=input('Please input the probability for a car to turn left of right:');
% g=input('Please input the seconds a traffic light is green:');
% o=input('Please input the seconds a traffic light is orange:');
% r=input('Please input the seconds a traffic light is red:');
n=10;
n1=randi(n-3+1)-1;
n2=randi(n-2-n1+1)-1;
n3=randi(n-1-n1-n2+1)-1;
n4=n-n1-n2-n3;

w=1;g=3;o=1;r=3;  %delete after debug
T=20;
%draw the cross road
Road(w);
lightg(w);

for t=1:T
% top right and bottom left lights
  for t = t
    if rem(t,g+o+r) <= g && rem(t,g+o+r) >0
        hold on;
        light13g(w);
        break;  
    elseif rem(t,g+o+r) > g && rem(t,g+o+r)<=g+o
        hold on;
        light13y(w);
        break;
    elseif rem(t,g+o+r)>g+o && rem(t,g+o+r)<=g+o+r ||rem(t,g+o+r)==0
        hold on;
        light13r(w);
        break;
    end
  end
% top left and bottom right lights
  for t = t
    if rem(t,g+o+r) <= r && rem(t,g+o+r) >0
        hold on;
        light24r(w);
        pause(1);
        break;        
    elseif rem(t,g+o+r) > r && rem(t,g+o+r)<=r+g
        hold on;
        light24g(w);
        pause(1); 
        break;    
    elseif rem(t,g+o+r)>r+g && rem(t,g+o+r)<=r+g+o ||rem(t,r+g+o)==0
        hold on;
    light24y(w);
        pause(1); 
        break;
    end
  end
  
end


