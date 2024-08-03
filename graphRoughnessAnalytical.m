function graphRoughnessAnalytical(d, Re, xUp, xL, step)
%A function that takes the diameter, Re, and the
%upper and lower value and the step value, and graphs Roughness vs
%Friction factor using the Analytical method  
  while (xL >= xUp) 
        disp("The upper value should be greater than the lower. Please input values again")
        xUp = inputRough();
        xL = inputRough(); 
  end
  
  x = xL:step:xUp;
  y =  1.325./(log((x./(3.7.*d)) + (5.74./(Re.^0.9)))).^2;
  plot(x, y);
end 