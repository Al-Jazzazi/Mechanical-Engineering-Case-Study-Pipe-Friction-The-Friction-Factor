function friction = g(X, roughness, d, Re)
%A helper method for Finding Friction, this method takes friction roughness
%diameter and Re as paramters and returns the value of g(x)
     friction= 1./sqrt(X) + 2.*log10( (roughness/(3.7*d)) + (2.51/(Re*sqrt(X)) ));
end