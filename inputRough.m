function roughness = inputRough()
%A function that used to input a value of Roughness inside the expected
%values and returns the value of roughness
disp("The values of roughness range from 1*10^-7 to 0.003")
    roughness = input("Input roughness: ");
    while or(roughness < 1*10^-7, roughness >.003)
        disp("The values of roughness range from 1*10^-7 to 0.003")
        roughness = input("Input roughness: ");
    end
end
