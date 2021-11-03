function der = f2der(y,dx)

%This function is supposed to take an array and find the slope
% of the secant line(derivative) along each point of interest in the
% function 

%Function points are plotted by the vector y
%dx being the distance between each point
    
    array_end = length(y);
    k = 1; 
    
    while k <= array_end-1
        %I cannot use finite difference method at the first or last 
        %point in the function since this would involve going to 
        %index zero (matlab doesn't allow) or to an index which is not 
        %initialized
        if k == 1
            der(k)= NaN;
            k = k+1;
        else if k == array_end-1
            der(k+1)= NaN;
        end
        
        %finite difference method
        der(k) = (y(k+1)-y(k-1))/2*dx
        k = k+1;
        
    end
end
    
%This function is supposed to take an array and find the slope
% of the secant line(derivative) along each point