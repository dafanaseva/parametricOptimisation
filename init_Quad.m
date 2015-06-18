clear;
% w r q p t1 t2 t3 t4
    
A = [   0 0 0 0 -0.0106 0.0106 -0.0106 0.0106;%w
        0 0 0 0 0.3006 0.3006 0.3006 0.3006;%r
        0 0 0 0 0.3254 0 -0.3254 0 ;%q 
        0 0 0 0 0 0.3254  0 -0.3254 ;%p
        0 0 0 0 -10 0 0 0; 
        0 0 0 0 0 -10 0 0; 
        0 0 0 0 0 0  -10 0; 
        0 0 0 0 0 0 0 -10];

B=zeros(8,4);

B(5,1)=7;
B(6,2)=7;
B(7,3)=7;
B(8,4)=7;

C=zeros(4,8);
C(1,1)=1;
C(2,2)=1;
C(3,3)=1;
C(4,4)=1;

D=zeros(4,4);
tauPhi = eye(4,4);
tauPsi = 0.01 * diag([0.0004, 0.19, 0.1, 0.1]);

R=0.001*eye(4,4);
Q = [70000 0 0 0    0    0    0 0;...
        0     7 0 0    0    0    0 0;...
        0     0 7 0    0    0    0 0;...
        0     0 0 7    0    0    0 0;
        0     0 0 0 0.01 0    0    0 ;...
        0     0 0 0 0    0.01 0    0 ;...
        0     0 0 0 0    0    0.01 0 ;...
        0     0 0 0 0    0    0    0.01];   


QI=zeros(8,8);
QI(1,1)=1;
QI(2,2)=1;
QI(3,3)=1;
QI(4,4)=1;
QI = 1*QI;
RI=1*eye(4,4);

X0 = 1*3*[0.01; -0.007; -0.012; 0.014; 0; 0; 0; 0];
XZ0 = 1*3*[0.01; -0.007; -0.012; 0.014; 0;0;0;0; 0;  0; 0; 0; 0; 0; 0; 0 ];

ft =-0*[1; 1; 1; 1]; 
yref = 1*[1; 1; 1;1];

Tend=2;
step=0.01;