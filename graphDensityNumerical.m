function graphDensityNumerical(d, roughness, viscosity, v, xUp, xL, step)
%A function that takes the diameter, roughness, viscosity, velocity, and the
%upper and lower value and the step value, and graphs Density vs
%Friction factor using the Numerical method 
  while (xL >= xUp) 
       disp("The upper value should be greater than the lower. Please input values again")
       xUp = inputP;
       xL = inputP; 
  end
  x = xL:step:xUp;
  
  y = zeros(1, length(x));

  for i = 1:length(x)
        y(1, i) = findingFriction(roughness, d, d*v*x(1,i)/viscosity);  
  end
  plot(x, y);
end 