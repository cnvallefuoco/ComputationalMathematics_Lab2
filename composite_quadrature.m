function approx_int = composite_quadrature(f,a,b,n,rule)
%function approx_int = composite_quadrature(f,a,b,n)
%computes the approximate integral using composite quadrature rules
%rule A - Trapezoidal rule
%rule B - Simpsons rule

%Courtney Datin 10/03/2017
 

nodes = linspace(a,b,n+1);
%n = 2^1 and is the number of subintervals and the number of nodes is n+1
%nodes contains endpoints of subintervals
h= abs(b-a)/n;

switch(rule)
    case('A')
        approx_int = (h/2)*(feval(f,nodes(1)) + 2.0*sum(feval(f,nodes(2:n))) + feval(f,nodes(n+1)));
    case('B')
        %implement your simpsons rule here.
        approx_int = (h/3)*(feval(f,nodes(1)) + 4.0*sum(feval(f,nodes(2:2:n))) + 2.0*sum(feval(f,nodes(3:2:n-1))) + feval(f,nodes((n+1)))); 
end
end
        
        
        