function p = inputP()
%A function that used to input a value of density inside the expected
%values and returns the value of density
disp("The values of fluid density range from 0.5 to 2000")
    p = input("Input Fluid density: ");
    while or(p < 0.5, p >2000)
        disp('Please enter value in the range of 0.5 and 2000')
        p = input("Input Fluid density: ");
    end
end
