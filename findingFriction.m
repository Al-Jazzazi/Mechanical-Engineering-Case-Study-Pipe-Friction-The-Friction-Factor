function xR = findingFriction(roughness, d, Re)
  %A function that uses The bisection method for finding roots, giving us a
  %good estimation of the friction factor. The function takes the roughess,
  %diameter, and Re value and returns the numerical approximate friction
  %factor.
    xU = 5;
    xL = 0.0001;
    xR = (xU + xL)./2;
    tolerance = 1*10^-8;
    if(g(xR, roughness, d, Re).*g(xL, roughness, d, Re) < 0)        
        while abs(g(xR, roughness, d, Re).*g(xL, roughness, d, Re))> tolerance
            xR = (xU + xL)./2;
            if(g(xR, roughness, d, Re).*g(xL, roughness, d, Re) < 0)
                xU =xR;
            end
            if(g(xR, roughness, d, Re).*g(xL, roughness, d, Re) > 0)
                xL = xR;
            end
            
        end
    end


    end 
