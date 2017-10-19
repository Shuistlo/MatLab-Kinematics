% define a function to compute the transformation matrices for a 3-linked
% arm in 2D, the length of each link is L, rotation angles are t1, t2 and
% t3. A01, A12 and A13 are the homogenous transformation matrices between
% frame0,1, frame 1,2 and frame2, 3 and T03 is transformation between
% frame0, 3

function [A01,A12,A23,T03]=FK_3link(t1,t2,t3,L)
%these all only rotate around the z axis
A01 = [cosd(t1) -sind(t1) 0  L*cosd(t1); 
       sind(t1) cosd(t1)  0  L*sind(t1);
       0    0      1   0; %rotating around z axis 
       0    0      0   1;]


A12 = [cosd(t2) -sind(t2) 0 L*cosd(t2);
       sind(t2) cosd(t2)  0 L*sind(t2);
       0        0         1    0;
       0        0         0    1;]

A23 =[cosd(t3)  -sind(t3) 0  L*cosd(t3);
      sind(t3) cosd(t3)   0  L*sind(t3);
      0            0      1     0;
      0           0       0     1;] 
  
T03=  A01*A12*A23;

  
