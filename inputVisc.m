function viscosity = inputVisc()
%A function that used to input a value of viscosity inside the expected
%values and returns the value of viscosity
disp("The values of viscosity range from 10^-6 to 300")
    viscosity = input("Input viscosity: ");
    while or(viscosity < 10^-6, viscosity >300)
        disp("The values of viscosity range from 10^-6 to 300")
        viscosity = input("Input viscosity: ");
    end
end
