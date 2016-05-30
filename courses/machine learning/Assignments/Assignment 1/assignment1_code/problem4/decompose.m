function[N N1 N2 avg change] = decompose(mp,mn,m1p,m1n,m2p,m2n)
    N =  myentropy(mp,mn);
    N1 = myentropy(m1p,m1n);
    N2 = myentropy(m2p,m2n);
    avg =( (m1p+m1n)*N1 + (m2p+m2n)*N2) / (mp +mn);
    change = N - avg;
end