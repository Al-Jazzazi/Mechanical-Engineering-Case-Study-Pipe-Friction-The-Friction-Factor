function graphviscosityAnalytical(d, p,  roughness, v, xUp, xL, step)
%A function that takes the density, roughness, diameter, velocity, and the
%upper and lower value and the step value, and graphs  viscosity vs
%Friction factor using the analytical method 

  while (xL >= xUp) 
       disp("The upper value should be greater than the lower. Please input values again")
       xUp = inputP;
       xL = inputP; 
  end
  x = xL:step:xUp;
  
  y =  1.325./(log((roughness./(3.7.*d)) + (5.74./((p.*v.*d./x).^0.9)))).^2;
  plot(x, y);
end 