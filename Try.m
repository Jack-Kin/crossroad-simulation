clf,clear all,clc;
%initialize the parameters and prompt the users
% % n=input('Please input the number of cars:');
% % w=input('Please input the width of the crossroad:');
% % p=input('Please input the probability that a cars does not stop at the red light:');
% % tu=input('Please input the probability for a car to turn left of right:');
% % g=input('Please input the seconds a traffic light is green:');
% % o=input('Please input the seconds a traffic light is orange:');
% % r=input('Please input the seconds a traffic light is red:');
n=20;w=1;p=0.3;tu=0.5;g=3;o=1;r=3;
n1=randi(floor(n/3));
n2=randi(n-2-n1);
n3=randi(n-1-n1-n2);
n4=n-n1-n2-n3;


pn1=[];pn2=[];pn3=[];pn4=[];
Ln1=[];Ln2=[];Ln3=[];Ln4=[];
Rn1=[];Rn2=[];Rn3=[];Rn4=[];
color(1)='g';color(2)='r';color(3)='g';color(4)='r';


%generete four go when red probability matrix
for i=1:n1
    cellp1{i}=[p 1-p];
    x=[1 0];
    cp=cumsum(cellp1{i});
    pn1=[pn1 x(sum(cp<=rand(1))+1)];
end
for i=1:n2
    cellp2{i}=[p 1-p];
    x=[1 0];
    cp=cumsum(cellp2{i});
    pn2=[pn2 x(sum(cp<=rand(1))+1)];
end
for i=1:n3
    cellp3{i}=[p 1-p];
    x=[1 0];
    cp=cumsum(cellp3{i});
    pn3=[pn3 x(sum(cp<=rand(1))+1)];
end
for i=1:n4
    cellp4{i}=[p 1-p];
    x=[1 0];
    cp=cumsum(cellp4{i});
    pn4=[pn4 x(sum(cp<=rand(1))+1)];
end
%generate  four random turning left probability matrix
for i=1:n1
    cellL1{i}=[tu/2 1-tu/2];
    x=[1 0];
    cp=cumsum(cellL1{i});
    Ln1=[Ln1 x(sum(cp<=rand(1))+1)];
end
for i=1:n2
    cellL2{i}=[tu/2 1-tu/2];
    x=[1 0];
    cp=cumsum(cellL2{i});
    Ln2=[Ln2 x(sum(cp<=rand(1))+1)];
end
for i=1:n3
    cellL3{i}=[tu/2 1-tu/2];
    x=[1 0];
    cp=cumsum(cellL3{i});
    Ln3=[Ln3 x(sum(cp<=rand(1))+1)];
end
for i=1:n4
    cellL4{i}=[tu/2 1-tu/2];
    x=[1 0];
    cp=cumsum(cellL4{i});
    Ln4=[Ln4 x(sum(cp<=rand(1))+1)];
end
%generate  four random turning left probability matrix
for i=1:n1
    cellR1{i}=[tu/2 1-tu/2];
    x=[1 0];
    cp=cumsum(cellR1{i});
    Rn1=[Rn1 x(sum(cp<=rand(1))+1)];
end
for i=1:n2
    cellR2{i}=[tu/2 1-tu/2];
    x=[1 0];
    cp=cumsum(cellR2{i});
    Rn2=[Rn2 x(sum(cp<=rand(1))+1)];
end
for i=1:n3
    cellR3{i}=[tu/2 1-tu/2];
    x=[1 0];
    cp=cumsum(cellR3{i});
    Rn3=[Rn3 x(sum(cp<=rand(1))+1)];
end
for i=1:n4
    cellR4{i}=[tu/2 1-tu/2];
    x=[1 0];
    cp=cumsum(cellR4{i});
    Rn4=[Rn4 x(sum(cp<=rand(1))+1)];
end

T=3*n; %total time

%draw the cross road
Road(w);

%draw the cars at initial time
for i=1:n1
    cell1{i}=rectangle('Position',[3+2*i w/2-0.3 1 0.6],......
        'FaceColor',[0.2 0.5 1],'EdgeColor',[0.2 0.5 1]);
end
for i=1:n2
    cell2{i}=rectangle('Position',[-w/2-0.3 3+2*i 0.6 1],....
        'FaceColor',[1 0.3 1],'EdgeColor',[1 0.3 1]);
end
for i=1:n3
    cell3{i}=rectangle('Position',[-4-2*i -w/2-0.3 1 0.6],.....
        'FaceColor',[0.5 0 0.5],'EdgeColor',[0.5 0 0.5]);
end
for i=1:n4
    cell4{i}=rectangle('Position',[w/2-0.3 -4-2*i 0.6 1],......
        'FaceColor',[1 0.5 0],'EdgeColor',[1 0.5 0]);
end
lightg(w);

% main time loop
for t=1:T
    
    % top right and bottom left lights
    for t = t
        if rem(t,g+o+r) <= g && rem(t,g+o+r) >0
            hold on;
            light13g(w);
            color1='g';
            color3='g';
            break;
        elseif rem(t,g+o+r) > g && rem(t,g+o+r)<=g+o
            hold on;
            light13y(w);
            color1='y';
            color3='y';
            break;
        elseif rem(t,g+o+r)>g+o && rem(t,g+o+r)<=g+o+r ||rem(t,g+o+r)==0
            hold on;
            light13r(w);
            color1='r';
            color3='r';
            break;
        end
    end
    % top left and bottom right lights
    for t = t
        if rem(t,g+o+r) <= r && rem(t,g+o+r) >0
            hold on;
            light24r(w);
            color2='r';
            color4='r';
            break;
        elseif rem(t,g+o+r) > r && rem(t,g+o+r)<=r+g
            hold on;
            light24g(w);
            color2='g';
            color4='g';
            break;
        elseif rem(t,g+o+r)>r+g && rem(t,g+o+r)<=r+g+o ||rem(t,r+g+o)==0
            hold on;
            light24y(w);
            color2='y';
            color4='y';
            break;
        end
    end
    
    %car animation
    for t = t
        % car1
        for i=1:n1
            if pn1(i) == 0  && Ln1(i) == 0 && Rn1(i) == 0 %直行
                if cell1{i}.Position(1)>=w+1 ||  cell1{i}.Position(1)<w
                    cell1{i}.Position(1)=cell1{i}.Position(1)-1;
                elseif (cell1{i}.Position(1)>=w &&cell1{i}.Position(1)<w+1) && (color1 =='g')
                    cell1{i}.Position(1)=cell1{i}.Position(1)-1;
                else
                    cell1{i}.Position(1)=cell1{i}.Position(1);
                    break;
                end
            elseif (pn1(i) == 0  && Ln1(i) == 1 && Rn1(i) == 0) || (pn1(i) == 1  && Ln1(i) == 1 && Rn1(i) == 0) %左转
                if cell1{i}.Position(1)>=w+1
                    cell1{i}.Position(1)=cell1{i}.Position(1)-1;
                elseif cell1{i}.Position(1)<w+1
                    cell1{i}.Position(1)=-w/2-0.3;
                    cell1{i}.Position(3)=0.6;
                    cell1{i}.Position(4)=1;
                    cell1{i}.Position(2)=cell1{i}.Position(2)-1;
                end
            elseif (pn1(i) == 0  && Ln1(i) == 0 && Rn1(i) == 1) || (pn1(i) == 1  && Ln1(i) == 0 && Rn1(i) == 1)%右转
                if cell1{i}.Position(1)>=w+1
                    cell1{i}.Position(1)=cell1{i}.Position(1)-1;
                elseif cell1{i}.Position(1)<w+1
                    cell1{i}.Position(1)=w/2-0.3;
                    cell1{i}.Position(3)=0.6;
                    cell1{i}.Position(4)=1;
                    cell1{i}.Position(2)=cell1{i}.Position(2)+1;
                end
            else
                cell1{i}.Position(1)=cell1{i}.Position(1)-1;
            end
        end
        % car2
        for i=1:n2
            if pn2(i) == 0  && Ln2(i) == 0 && Rn2(i) == 0 %直行
                if cell2{i}.Position(2)<w || cell2{i}.Position(2)>=w+1
                    cell2{i}.Position(2)=cell2{i}.Position(2)-1;
                elseif cell2{i}.Position(2)>=w && cell2{i}.Position(2)<w+1 && (color2 =='g')
                    cell2{i}.Position(2)=cell2{i}.Position(2)-1;
                else
                    cell2{i}.Position(2)=cell2{i}.Position(2);
                    break;
                end
            elseif (pn2(i) == 0  && Ln2(i) == 1 && Rn2(i) == 0) || (pn2(i) == 1  && Ln2(i) == 1 && Rn2(i) == 0) %左转
                if cell2{i}.Position(2)>=w+1
                    cell2{i}.Position(2)=cell2{i}.Position(2)-1;
                elseif cell2{i}.Position(2)<w+1
                    cell2{i}.Position(2)=-w/2-0.3;
                    cell2{i}.Position(3)=1;
                    cell2{i}.Position(4)=0.6;
                    cell2{i}.Position(1)=cell2{i}.Position(1)+1;
                end
            elseif (pn2(i) == 0  && Ln2(i) == 0 && Rn2(i) == 1) || (pn2(i) == 1  && Ln2(i) == 0 && Rn2(i) == 1)%右转
                if cell2{i}.Position(2)>=w+1
                    cell2{i}.Position(2)=cell2{i}.Position(2)-1;
                elseif cell2{i}.Position(2)<=w+1
                    cell2{i}.Position(2)=w/2-0.3;
                    cell2{i}.Position(3)=1;
                    cell2{i}.Position(4)=0.6;
                    cell2{i}.Position(1)=cell2{i}.Position(1)-1;
                end
            else
                cell2{i}.Position(2)=cell2{i}.Position(2)-1;
            end
        end
        % car3
        for i=1:n3
            if pn3(i) == 0 && Ln3(i) == 0 && Rn3(i) == 0 %直行
                if cell3{i}.Position(1)<=-w-2 || cell3{i}.Position(1)>-w-1
                    cell3{i}.Position(1)=cell3{i}.Position(1)+1;
                elseif (cell3{i}.Position(1)<=-w-1 && cell3{i}.Position(1)>-w-2) && color3 =='g'
                    cell3{i}.Position(1)=cell3{i}.Position(1)+1;
                else
                    cell3{i}.Position(1)=cell3{i}.Position(1);
                    break;
                end
            elseif (pn3(i) == 0  && Ln3(i) == 1 && Rn3(i) == 0) || (pn3(i) == 1  && Ln3(i) == 1 && Rn3(i) == 0) %左转
                if cell3{i}.Position(1)<=-w-2
                    cell3{i}.Position(1)=cell3{i}.Position(1)+1;
                elseif cell3{i}.Position(1)>-w-2
                    cell3{i}.Position(1)=w/2-0.3;
                    cell3{i}.Position(3)=0.6;
                    cell3{i}.Position(4)=1;
                    cell3{i}.Position(2)=cell3{i}.Position(2)+1;
                end
            elseif (pn3(i) == 0  && Ln3(i) == 0 && Rn3(i) == 1) || (pn3(i) == 1  && Ln3(i) == 0 && Rn3(i) == 1)%右转
                if cell3{i}.Position(1)<=-w-2
                    cell3{i}.Position(1)=cell3{i}.Position(1)+1;
                elseif cell3{i}.Position(1)>-w-2
                    cell3{i}.Position(1)=-w/2-0.3;
                    cell3{i}.Position(3)=0.6;
                    cell3{i}.Position(4)=1;
                    cell3{i}.Position(2)=cell3{i}.Position(2)-1;
                end
            else
                cell3{i}.Position(1)=cell3{i}.Position(1)+1;
            end
        end
        % car4
        for i=1:n4
            if pn4(i) == 0  && Ln4(i) == 0 && Rn4(i) == 0 %直行
                if cell4{i}.Position(2)<=-w-2 || cell4{i}.Position(2)>-w-1
                    cell4{i}.Position(2)=cell4{i}.Position(2)+1;
                elseif (cell4{i}.Position(2)<=-w-1 && cell4{i}.Position(2)>-w-2 ) && color4 =='g'
                    cell4{i}.Position(2)=cell4{i}.Position(2)+1;
                else
                    cell4{i}.Position(2)=cell4{i}.Position(2);
                    break;
                end
            elseif (pn4(i) == 0  && Ln4(i) == 1 && Rn4(i) == 0) || (pn4(i) == 1  && Ln4(i) == 1 && Rn4(i) == 0) %左转
                if cell4{i}.Position(2)<=-w-2
                    cell4{i}.Position(2)=cell4{i}.Position(2)+1;
                elseif cell4{i}.Position(2)>-w-2
                    cell4{i}.Position(2)=w/2-0.3;
                    cell4{i}.Position(3)=1;
                    cell4{i}.Position(4)=0.6;
                    cell4{i}.Position(1)=cell4{i}.Position(1)-1;
                end
            elseif (pn4(i) == 0  && Ln4(i) == 0 && Rn4(i) == 1) || (pn4(i) == 1  && Ln4(i) == 0 && Rn4(i) == 1)%右转
                if cell4{i}.Position(2)<=-w-2
                    cell4{i}.Position(2)=cell4{i}.Position(2)+1;
                elseif cell4{i}.Position(2)>-w-2
                    cell4{i}.Position(2)=w/2-0.3;
                    cell4{i}.Position(3)=1;
                    cell4{i}.Position(4)=0.6;
                    cell4{i}.Position(1)=cell4{i}.Position(1)-1;
                end
            end
        end       
    end
    xlim([-5 5])
    ylim([-5 5])
    pause(0.3); 
    %%%%%%%  change to 1 finally
    
    
    
    
end
    
    
    
