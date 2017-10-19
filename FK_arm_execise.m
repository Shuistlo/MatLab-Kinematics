
clear all
close all

t1 =0;
t2 =0;
t3 =0;


hold on

%each link has a length of 2 unit
L=2

%for plotting the motion of the arm-do not modify 
for t1 = 0:5:45;

plot3linkarm(t1,t2,t3,L)

pause(0.1);

end

for t2 = 0:5:30;
    
plot3linkarm(t1,t2,t3,L)

pause(0.1);
  
end

for t3 = 0:5:45;

plot3linkarm(t1,t2,t3,L)

pause(0.1);
  
end



hold off