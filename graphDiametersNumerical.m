function graphDiametersNumerical(p, roughness, viscosity, v, xUp, xL, step)
%A function that takes the density, roughness, viscosity, velocity, and the
%upper and lower value and the step value, and graphs the Diameter vs
%Friction factor using the Numerical method 
  while (xL >= xUp) 
        disp("The upper value should be greater than the lower. Please input values again")
       xUp = input("Upper Value: ");
       xL = input("Lower Value: "); 
  end
 
  
      x = xL:step:xUp;
      y = zeros(1, length(x));
      
      for i = 1:length(x)
            y(1, i) = findingFriction(roughness, x(1,i), x(1,i)*v*p/viscosity);  
            if(x(1,i)*v*p/viscosity < 4000)
                disp("Error Re is less than 4000")
                break;
            end
    
      end
      plot(x,y);

  end

