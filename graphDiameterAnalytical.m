function graphDiameterAnalytical(p, roughness, viscosity, v, xUp, xL, step)
%A function that takes the density, roughness, viscosity, velocity, and the
%upper and lower value and the step value, and graphs Diameter vs
%Friction factor using the Analytical method 
  while (xL >= xUp) 
        disp("The upper value should be greater than the lower. Please input values again")
       xUp = input("Upper Value: ");
       xL = input("Lower Value: "); 
  end
  x = xL:step:xUp;
  
  y =  1.325./(log((roughness./(3.7.*x)) + (5.74./((p.*v.*x./viscosity).^0.9)))).^2;
  plot(x, y);
end 