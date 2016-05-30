function[req] = active_perceptron_b(b)
req = zeros(2,1000);

w = zeros(1,2);
T = 1000;
x = zeros(2,1);
u = [1/sqrt(2) -1/sqrt(2)];
y_pred = zeros(2,1000);
error = zeros(2,1000);
for d = 1:2
    
    for t = 1 : T
        x = get_instance(d,t);
        
        x_cap = (1/sqrt(x*x'))*x ;
        r = w*x_cap' ;
        y_pred(d,t) = sign(r);
        par = b/(b + abs(r)) ; 
        z = sign(rand(1) - (1-par)) ;
        
        if z == 1
            if t==1
                req(d,t) = 1;
            else
                req(d,t) = req(d,t-1) + 1;
            end
     
            %y_pred(d,t) = sign(w*x');
            y_true = get_label(d,t);
%            ubound(d,t) = (log10(R*R*(u*u')/(gamma*gamma)))/t;
            if y_pred(d,t) ~= y_true
                w = w + y_true*x;
            end
        else
            if t==1
                req(d,t) = 0;
            else
                req(d,t) = req(d,t-1);
            end
        end
            error(d,t) = error_uniform(u,w);
    end
    
end

    hold on
    plot(req(1,:),error(1,:),'r');
    %plot(req(2,:),error(2,:));
    %plot(1:1000,error(1,:),'r');
    %plot(1:1000,error(2,:),'b');    
%    h1 = figure();
%    plot(1:1000,ubound(1,:),'r');
%    h2 = figure();
%    plot(1:1000,ubound(2,:),'b');    
    
end