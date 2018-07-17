function pl = Road(w) 

x = [-5 -w];
y = [0 0];
pl=plot(x,y,'--','Color','k');
axis off;
hold on;
x = [w 5];
y = [0 0];
pl=plot(x,y,'--','Color','k');
hold on;
x = [-5 -w];
y = [w w];
pl=plot(x,y,'Color','k','LineWidth',2);
hold on;
x = [w 5];
y = [w w];
pl=plot(x,y,'Color','k','LineWidth',2);
hold on;
x = [-5 -w];
y = [-w -w];
pl=plot(x,y,'Color','k','LineWidth',2);
hold on;
x = [w 5];
y = [-w -w];
pl=plot(x,y,'Color','k','LineWidth',2);


hold on;
x = [0 0];
y = [-5 -w];
pl=plot(x,y,'--','Color','k');
hold on;
x = [0 0];
y = [w 5];
pl=plot(x,y,'--','Color','k');
hold on;
y = [-5 -w];
x = [w w];
pl=plot(x,y,'Color','k','LineWidth',2);
hold on;
y = [w 5];
x = [w w];
pl=plot(x,y,'Color','k','LineWidth',2);
hold on;
y = [-5 -w];
x = [-w -w];
pl=plot(x,y,'Color','k','LineWidth',2);
hold on;
y = [w 5];
x = [-w -w];
pl=plot(x,y,'Color','k','LineWidth',2);
end