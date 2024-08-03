function friction = AnalyticalFrictionFractor(roughness, d, Re)
%A function that takes the roughness diameter and Re and uses the
%analyitcal method to return a friction value
    insideln = roughness/(3.7*d) + (5.74/(Re^0.9));
    friction = 1.325/(log(insideln)^2);
    
end 
