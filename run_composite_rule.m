%This script calls the routine composite_quadrature on a sequence
%of increasing n (the number of subintervals)
%The output consists of a table of the approximate integral,
%error and ratio between sucessive errors.
%Quadrature rules are: 
%A - Trapeziodal Rule
%B - Simpsons Rule
% The integrand f is defined in f.m
approx_integral_vec=[];
error_vec=[];
true_integral = quad('f', 0, 1, [1.e-12 1.e-12]); %for part 4A; 
%true_integral = quad('f', 0, 1, [1.e-12 1.e-12]); %for part 4B
for i=2:10 %changed from 1:6
n=2.^i;       %number of subintervals
approx_int=composite_quadrature('f',0,1,n,'A'); %function f, integrated from 0 to 1 with n subintervals
approx_integral_vec =[approx_integral_vec;approx_int];
error = approx_int - true_integral;
error_vec =[error_vec;error];
end
format long
disp(' Approximate Integral        Error');
disp([approx_integral_vec,error_vec]);
%convergence
ratios= error_vec(1:length(error_vec)-1)./error_vec(2:length(error_vec));
disp('Ratios');
disp(ratios);
