s=0.004;   //шаг в 0   0.0005 
s1=0.004;   //шаг в конце   0.005
s2=0.004;   //в муфте  0.001
s3=0.004;  //в спирале   0.000025
radSp = 0.00035;
rt=0.0315; //truba
tol=0.0058;
r1=rt-tol;
lt=0.09; //длина трубы

rasottr=0.0003;


lsp1=0.005;
lsp=0.025;
lsp2=lsp1+lsp;
n = lsp/16;

tolmuf=0.0082;
rm=rt+tolmuf;
lm=0.047;
dliz=0.01; // dlina izol na poverxn trubi

SentrSp = rt + rasottr ;

Point(1) = {0, r1, 0, s1}; 
Point(2) = {lt, r1, 0, s1}; 
Point(3) = {lm+dliz, rt, 0, s1}; 
Point(4) = {lt, rt, 0, s1}; 
Point(5) = {0, rm, 0, s1}; 
Point(6) = {lm, rm, 0, s1}; 
Point(7) = {lm, rt, 0, s1};

Point(8) = {lsp1, SentrSp, 0, s3};
Point(9) = {lsp1+n, SentrSp, 0, s3};
Point(10) = {lsp1+2*n, SentrSp, 0, s3};
Point(11) = {lsp1+3*n, SentrSp, 0, s3};
Point(12) = {lsp1+4*n, SentrSp, 0, s3};
Point(13) = {lsp1+5*n, SentrSp, 0, s3};
Point(14) = {lsp1+6*n, SentrSp, 0, s3};
Point(15) = {lsp1+7*n, SentrSp, 0, s3};
Point(16) = {lsp1+8*n, SentrSp, 0, s3};
Point(17) = {lsp1+9*n, SentrSp, 0, s3};
Point(18) = {lsp1+10*n, SentrSp, 0, s3};
Point(19) = {lsp1+11*n, SentrSp, 0, s3};
Point(20) = {lsp1+12*n, SentrSp, 0, s3};
Point(21) = {lsp1+13*n, SentrSp, 0, s3};
Point(22) = {lsp1+14*n, SentrSp, 0, s3};
Point(23) = {lsp1+15*n, SentrSp, 0, s3};

Line(1) = {5, 6};
Line(2) = {6, 7};
Line(3) = {7, 3};
Line(4) = {3, 4};
Line(5) = {4, 2};
Line(6) = {2, 1};
Line(7) = {1, 5};
Line Loop(8) = {1, 2, 3, 4, 5, 6, 7};
Plane Surface(30) = {8};
Physical Surface(1) = {30};
Physical Line(1) = {1}; // izol
Physical Line(2) = {2, 3}; // izol s torsa
Physical Line(3) = {4};      // povaerx trubi
Physical Line(4) = {5};      // 1 roda
Physical Line(5) = {6};      // vnutr trubi
Physical Line(6) = {7};      // 2 roda


Point{8} In Surface{30};
Point{9} In Surface{30};
Point{10} In Surface{30};
Point{11} In Surface{30};
Point{12} In Surface{30};
Point{13} In Surface{30};
Point{14} In Surface{30};
Point{15} In Surface{30};
Point{16} In Surface{30};
Point{17} In Surface{30};
Point{18} In Surface{30};
Point{19} In Surface{30};
Point{20} In Surface{30};
Point{21} In Surface{30};
Point{22} In Surface{30};
Point{23} In Surface{30};


//+
Point(24) = {0, 0.0315, -0, 1.0};
//+

//+
Line(8) = {24, 7};
