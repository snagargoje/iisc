T = 1000;
x = zeros(2,1);
u = [1/sqrt(2) -1/sqrt(2)];
y_pred = zeros(2,1000);
error = zeros(2,1000);
for d = 1:2
w = zeros(1,2);
    
    for t = 1 : T
        x = get_instance(d,t);
        y_pred(d,t) = sign(w*x');
        y_true = get_label(d,t);
%        ubound(d,t) = (log10(R*R*(u*u')/(gamma*gamma)))/t;
        if y_pred(d,t) ~= y_true
            w = w + y_true*x;
        end
        error(d,t) = error_uniform(u,w);
    end
    
end

    hold on
    plot(1:1000,error(1,:),'r');
    %plot(1:1000,error(2,:),'b');    
%    h1 = figure();
%    plot(1:1000,ubound(1,:),'r');
%    h2 = figure();
%    plot(1:1000,ubound(2,:),'b');    
    
