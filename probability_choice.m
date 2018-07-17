function  probability_choice(n1,n2,n3,n4,p,o)
pn1=[];pn2=[];pn3=[];pn4=[];
Ln1=[];Ln2=[];Ln3=[];Ln4=[];
Rn1=[];Rn2=[];Rn3=[];Rn4=[];

%generete four go when green probability matrix
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
    cellL1{i}=[o/2 1-o/2];
    x=[1 0];
    cp=cumsum(cellL1{i});
    Ln1=[Ln1 x(sum(cp<=rand(1))+1)];
end
for i=1:n2
    cellL2{i}=[o/2 1-o/2];
    x=[1 0];
    cp=cumsum(cellL2{i});
    Ln2=[Ln2 x(sum(cp<=rand(1))+1)];
end
for i=1:n3
    cellL3{i}=[o/2 1-o/2];
    x=[1 0];
    cp=cumsum(cellL3{i});
    Ln3=[Ln3 x(sum(cp<=rand(1))+1)];
end
for i=1:n4
    cellL4{i}=[o/2 1-o/2];
    x=[1 0];
    cp=cumsum(cellL4{i});
    Ln4=[Ln4 x(sum(cp<=rand(1))+1)];
end

%generate  four random turning left probability matrix
for i=1:n1
    cellR1{i}=[o/2 1-o/2];
    x=[1 0];
    cp=cumsum(cellR1{i});
    Rn1=[Rn1 x(sum(cp<=rand(1))+1)];
end
for i=1:n2
    cellR2{i}=[o/2 1-o/2];
    x=[1 0];
    cp=cumsum(cellR2{i});
    Rn2=[Rn2 x(sum(cp<=rand(1))+1)];
end
for i=1:n3
    cellR3{i}=[o/2 1-o/2];
    x=[1 0];
    cp=cumsum(cellR3{i});
    Rn3=[Rn3 x(sum(cp<=rand(1))+1)];
end
for i=1:n4
    cellR4{i}=[o/2 1-o/2];
    x=[1 0];
    cp=cumsum(cellR4{i});
    Rn4=[Rn4 x(sum(cp<=rand(1))+1)];
end

