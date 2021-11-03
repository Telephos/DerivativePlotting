% This script is being used to test some of the functionalities of 
% f2der.m and slope2tang3.m 
% USE: slope2tang3 and f2der

%This dx term isn't working right now, but I'd like to be able to sample
%over


dx = 1;
pFrom = -12;
pTo = 12;
pRange = sqrt(pFrom^2)+sqrt(pTo^2);
xTerm = pFrom;
k = 1;

%Here I'm just generatin the function.

while k <= (pRange+1)
   array_test2(k) = -(10*xTerm)+(1/10)*(xTerm^3);
   if array_test2(k) == 0
       zeroVal = k;
       zeroArray = [zeroVal; k];
   end
   xTerm = xTerm+1;
   k = k+1; 
   
end

array_der2 = f2der(array_test2, dx);

%array_test = (pFrom:dx:pTo).^(3).*(1/20).*(-4);
%array_der = f2der(array_test, dx);

slopes = slope2tang3(array_test2, array_der2, dx, pFrom, pTo);

%inverse tangeant in degrees of the derivatives 
tangerinesTan = atand(array_der2);

plot([pFrom:dx:pTo], array_test2, 'LineWidth', 6);
hold on 
plot([pFrom:dx:pTo], array_der2, 'LineWidth', 3);

skipEvery = 2;

for k = 1:skipEvery:size(slopes,1)
    
    plot(slopes(1,:), slopes(k,:))
    
end

% plot(slopes(1,:), slopes, ':', 'LineWidth', 2)
 
% for k = 1:2:size(slopes,1)
%     plot(slopes(1,:), slopes(k), ':', 'LineWidth', 2)
% end

hold off
