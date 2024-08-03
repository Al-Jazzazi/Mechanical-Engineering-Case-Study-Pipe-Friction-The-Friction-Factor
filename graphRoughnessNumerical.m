function graphRoughnessNumerical(d, Re,xUp, xL, step)
%A function that takes the diameter, Re, and the
%upper and lower value and the step value, and graphs Roughness vs
%Friction factor using the Numerical method 
  while (xL >= xUp) 
        disp("The upper value should be greater than the lower. Please input values again")
        xUp = inputRough();
        xL = inputRough(); 
  end
  x = xL:step:xUp;
  y = zeros(1, length(x));
  for i = 1:length(x)
        y(1, i) = findingFriction(x(1,i), d, Re);   
  end
  plot(x,y);
end