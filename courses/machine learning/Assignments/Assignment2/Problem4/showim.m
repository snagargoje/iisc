mismatch = ( find( pred_te(:, 1) ~= label_test));

for i = 1: length( mismatch)
    a = reshape( test( mismatch( i), :), 16, 16);
    fprintf( '%d\t%d\t%d\n', mismatch( i), pred_te( mismatch( i), 1), label_test( mismatch( i)));
    imshow( transpose(a), 'InitialMagnification', 350, 'Border','tight')
    pause( 10);
end
