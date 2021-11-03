% integral from negative infinitiy to positive infinity
% Gaussian function: a*e^(-(x-b)^2)/(2c^2)
% parameters a, b, c are real constants, c>0
% a = alpha 
% b = mu (expected value)
% c = sigma (variance)

var_s = 2;
alpha = 1/(var_s*sqrt(2*pi));
mu = 0;
sigma = sqrt(var_s);
dx = .1;

mux = -5;
muy = 5;
var_s2 = 2;
alpha2 = 1/(var_s2*sqrt(2*pi));
sigma2 = sqrt(var_s2);


%range over which I'm plotting
x = -15:dx:15;
y = x;

[X,Y] = meshgrid(x,y);

%improve this function so all parameters are included
z = exp(-(alpha.*((X.^2)+(Y.^2))/(2*sigma.^2)));
z2 = -exp(-(alpha2.*(((X-mux).^2)+((Y-muy).^2))/(2*sigma2.^2)));
z = z+z2;

% This works fine. Just plotting the function.
surf(X,Y, z)
hold on
%surf(X,Y, z2)
shading interp
axis([min(x) max(x) min(y) max(y) -1 1])

%x and y limits will automatically change based on the the lowest and 
%highest value in the matrix


