w = zeros(1,2);
T = 1000;
x = zeros(2,1);
loss = 0;
c_loss = zeros(2,1000);
y_pred = zeros(2,1000);
for d = 1:2
    loss = 0;
    for t = 1 : T
        x = get_instance(d,t);
        y_pred(d,t) = sign(w*x');
        y_true = get_label(d,t);
        if y_pred(d,t) ~= y_true
            w = w + y_true*x;
            loss = loss + 1 ;
        end
        c_loss(d,t) = loss;
    end
    hold on;
    plot(1:1000,c_loss(d,:));
end
