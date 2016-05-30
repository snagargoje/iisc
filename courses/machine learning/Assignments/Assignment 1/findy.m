
function y = findy(x)
s = size(x);
rowsum = 0;
for i = 1:s(1)
    rowsum = 0;
    for j = 1:s(2)
        rowsum = rowsum + x(i,j);
    end
    y(i) = rowsum;
end
y = y';
gross = sum(y);
avg = gross/s(1);
y = y < avg;