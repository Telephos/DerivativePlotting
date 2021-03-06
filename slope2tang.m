function tanLine = slope2tang(fx, slope, dx)
    %what this tanLine function does is allow me to provide a vector 
    %representing a values of a function over some range and
    %the slope (by finite difference method) AT EACH POINT in that function and get back 
    %a small linear function of the slope AT EACH POINT IN THE FUNCTION
    %I'm trying to plot this smaller linear function at the corresponding
    %point in the function in order to demonstrate the derivative 
    %and the change in it as the function is going along.
   
    
   for m = 1:length(fx)
       %This statement below needs to be made generalizable
       %So I can change the length of this little linear function
       for k = -5:5
           tanLine(m,k+6) = fx(m)+(slope(m)*k);
       end
   end
end 