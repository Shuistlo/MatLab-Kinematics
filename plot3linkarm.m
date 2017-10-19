
function plot3linkarm(t1,t2,t3,L)

[A1,A2,A3,T]=FK_3link(t1,t2,t3,L);    

%%%compute the coordinate of end tip of link1
link1 = A1 * [0; 0; 0; 1;];

%for plotting the motion of link1-do not modify 
quiver3(0,0,0,link1(1),link1(2),link1(3),1,'b')

%%%compute the coordinate of end tip of link2
link2 = A1* A2* [0; 0; 0; 1;] ;

%for plotting the motion of link2-do not modify 
quiver3(link1(1),link1(2),link1(3),link2(1)-link1(1),link2(2)-link1(2),link2(3)-link1(3),1,'r')

%%%compute the coordinate of end tip of link3
link3 =  A1*A2*A3* [0; 0; 0; 1;] ;

%for plotting the motion of link3-do not modify 
quiver3(link2(1),link2(2),link2(3),link3(1)-link2(1),link3(2)-link2(2),link3(3)-link2(3),1,'k')

