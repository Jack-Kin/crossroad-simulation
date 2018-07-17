clear all,clc;
syms finalresult;
C = input('Please input a set of elements(no space between elements):','s');  %// Set of possible letters
s=1;
e=length(C);
Re(C,s,e)

function  Re(C,s,e)
if s==e
    disp(C);
else
    for i=s:e
        temp=C(s);C(s)=C(i);C(i)=temp;
        Re(C,s+1,e);
        temp=C(s);C(s)=C(i);C(i)=temp;
    end
end
end



