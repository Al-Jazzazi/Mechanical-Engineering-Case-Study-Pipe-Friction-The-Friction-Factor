function [d, Re] = CreatingRe(p, d, velocity,viscosity)
%A function that take the values for diameter, density, velocity, and viscosity, and checks 
%wether the values produce a value of Re greater than 4000. if not, it will
%ask for the values again. 
     Re = p*d*velocity/viscosity;
     d = d;
     while Re < 4000
         disp('The value of Re is less than 4000, pls input values again');
           p = inputP();
            viscosity = inputVisc();
            velocity = input("Input velocity:");
            d = input("input diameter:");
            Re = p.*d.*velocity./viscosity;
     end
end