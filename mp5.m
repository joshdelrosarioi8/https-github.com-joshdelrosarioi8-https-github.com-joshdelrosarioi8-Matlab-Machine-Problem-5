n = -1:204;
x = input('Input a function, x(n): '); 
for m=1:200 
    if m==1 
        X(m)=x(m+1); 
        Y(m)=-1.5*x(m+1)+2*x(m+2)-0.5*x(m+3); 
    elseif m>1 && m<=199 
        X(m)=x(m+1);
        Y(m)=0.5*x(m+2)-0.5*x(m);
        X(m)=x(m+1);
        Y(m)=1.5*x(m+1)-2*x(m)+0.5*x(m-1);
        
    else 
        X(m)=x(m+1);
        Y(m)=NaN;   
    end
end

n = 0:199;
plot(n,X,'-om','markersize',2,'markerfacecolor','g'), hold,
plot(n,Y,'-ob','markersize',2,'markerfacecolor','b'),
axis tight
grid on
xlabel 'n'; ylabel 'x(n) and y(n)'; title 'Graphs of x(n) & y(n)';
legend('x(n)','y(n)');