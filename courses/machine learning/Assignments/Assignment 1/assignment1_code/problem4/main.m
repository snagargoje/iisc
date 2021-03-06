%p1 = decompose(12,12,3,3,9,9);
%p2 = decompose(12,12,6,7,6,5);
%p3 = decompose(12,12,8,12,4,0);
%p4 = decompose(12,12,3,5,9,7);
%p5 = decompose(12,12,4,8,8,4);
%p6 = decompose(12,12,5,3,7,9);
D = [3 3 9 9 ; 
    6 7 6 5 ;
    8 12 4 0 ;
    3 5 9 7 ;
    4 8 8 4;
    5 3 7 9];
fprintf('N\tN1\tN2\tavg\tchange\n');
disp('\n'); 
for i = 1:6
    [N N1 N2 avg change] = decompose(12,12,D(i,1),D(i,2),D(i,3),D(i,4)) ;
    fprintf('\n%d\t%d\t%d\t%d\t%d\n',N,N1,N2,avg,change);
end
