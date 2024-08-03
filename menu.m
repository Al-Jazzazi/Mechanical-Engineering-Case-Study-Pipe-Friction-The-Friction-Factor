function menu() 
%This is function that brings the project togehter. The menu function is a
%menu that keeps asks the user for an value selection to which part of the
%project the user wants to use. The user can choose 1 to Calculate the
% numerical and anlytical values of friction, 2 to Graph Friction Factor vs
% Diameter, 3 to Graph Friction Factor vs Pipe Roughness, 4 to Graph
% Friction factor vs Fluid ensity, 5 to Graph Friction Factor vs Dymanic
% Vsicosity, and 6 to Terminate the loop

disp("Hello This is a a project designed to calculate the friction factor giving enough paramters, and graph it in terms of different variables.");
disp("It does that in two ways methods. An analytical method and a numerical method");



value = 0;

while value ~= 6 
    fprintf("Welcome to the menu. You can choose between 5 function that project offers:\n")
    fprintf("1. Calculate the numerical and anlytical values of friction\n2.Graph Friction Factor vs Diameter\n")
    fprintf("3.Graph Friction Factor vs Pipe Roughness\n4.Graph Friction factor vs Fluid ensity\n5.Graph Friction Factor vs Dymanic Vsicosity\n6.Terminates\n")
    value = input('Input selection: ');
    switch value 
        %In case the user wants to calculate the numerican and analytical
        %values of Friction factor 
        case 1
            
            roughness = inputRough();
            p = inputP();
            d = input("input diameter:");
            velocity = input("Input velocity:");
            viscosity = inputVisc();
            [d, Re ] = CreatingRe(p, d , velocity, viscosity);
            fprintf("The answer for analyitical friction is %0.5f\n", AnalyticalFrictionFractor(roughness, d, Re));
            fprintf("The answer for Numerical friction is %0.5f\n",findingFriction(roughness, d, Re));
        %Second case
        case 2
            roughness = inputRough();
            p = inputP();
            velocity = input("Input velocity:");
            viscosity = inputVisc();

            disp("Input the upper values of diameter followed by the lower volume")
            xUp = input("input diameter:");
            xL = input("input diameter:");
            %To chack if the lower limit is less than the upper limit
            while (xL >= xUp) 
                disp("The upper value should be greater than the lower. Please input values again")
                xUp = input("Upper Value: ");
                xL = input("Lower Value: "); 
            end
            %It will only graph if the boundaries give value of Re greater
            %than 4000
             if(xL.*p.*velocity./viscosity < 4000 | xUp.*p.*velocity./viscosity < 4000)
             fprintf("The value of Re should be greater than 4000\n\n\n\n")
             else 
                step = input("Please input a valid step size: ");
                
    
                graphDiameterAnalytical(p, roughness, viscosity, velocity, xUp, xL, step);
                hold on
                graphDiametersNumerical(p, roughness, viscosity, velocity, xUp,xL,step)
                legend("Analyitical", "Numerical")
                xlabel("Diameter[m]")
                ylabel ("Friction Factor ")
                title("Diamter[m] vs Friction Factor")
                saveas(gcf, "DiametervsFriction.png")
                hold off
             end

        case 3 
            p = inputP();
            d = input("input diameter:");
            velocity = input("Input velocity:");
            viscosity = inputVisc();
            [d, Re ] = CreatingRe(p, d , velocity, viscosity);
            
            disp("Input the upper values of roughness followed by the lower volume")
            xUp = inputRough();
            xL = inputRough(); 
            while (xL >= xUp) 
                disp("The upper value should be greater than the lower. Please input values again")
                xUp = inputRough();
                xL = inputRough();
            end

            step = input("Please input a valid step size: ");
            
            

            graphRoughnessAnalytical(d, Re,xUp, xL, step)
            hold on
            graphRoughnessNumerical(d, Re,xUp, xL, step)
            legend("Analyitical", "Numerical")
            xlabel("Roughness[m]")
            ylabel ("Friction Factor ")
            title("Roughness[m] vs Friction Factor")
            saveas(gcf, "RoughnessvsFriction.png")
            
            hold off
        case 4 
            roughness = inputRough();
            d = input("input diameter:");
            velocity = input("Input velocity:");
            viscosity = inputVisc();

            disp("Input the upper values of density followed by the lower volume")
            xUp = inputP;
            xL = inputP;

              %To chack if the lower limit is less than the upper limit
            while (xL >= xUp) 
                disp("The upper value should be greater than the lower. Please input values again")
                xUp = inputP();
                xL = inputP();
            end
            %It will only graph if the boundaries give value of Re greater
            %than 4000
            if(xL.*d.*velocity./viscosity < 4000 | xUp.*d.*velocity./viscosity < 4000)
                fprintf("The value of Re should be greater than 4000\n\n\n\n")
            else 
                step = input("Please input a valid step size: ");
            
    
                graphDensityAnalytical(d, roughness, viscosity, velocity, xUp, xL, step)
                hold on 
                graphDensityNumerical(d, roughness, viscosity, velocity, xUp, xL, step)
                legend("Analyitical", "Numerical")
                xlabel("Density[kg/m^3]")
                ylabel ("Friction Factor ")
                title("Density[kg/m^3] vs Friction Factor")
                saveas(gcf, "DensityvsFriction.png")
                hold off
            end
          
        case 5
            roughness = inputRough();
            p = inputP();
            d = input("input diameter:");
            velocity = input("Input velocity:");
            disp("Input the upper values of Viscosity followed by the lower volume")
            xUp = inputVisc();
            xL = inputVisc();
              %To chack if the lower limit is less than the upper limit
            while (xL >= xUp) 
                disp("The upper value should be greater than the lower. Please input values again")
                xUp = inputVisc();
                xL = inputVisc();
            end
            %It will only graph if the boundaries give value of Re greater
            %than 4000
            if(d.*p.*velocity./xL < 4000 | d.*p.*velocity./xUp < 4000)
                fprintf("The value of Re should be greater than 4000\n\n\n\n")
             else 
                step = input("Please input a valid step size: ");
            
    
                graphviscosityAnalytical(d, p,  roughness, velocity, xUp, xL, step)
                hold on 
                graphviscosityNumerical(d, p,  roughness, velocity, xUp, xL, step)
                legend("Analyitical", "Numerical")
                xlabel("Density[ [N s/m^2]")
                ylabel ("Friction Factor ")
                title("Viscosity[ [N s/m^2] vs Friction Factor")
                saveas(gcf, "ViscosityvsFriction.png")
                hold off
            end
        case 6 
            disp("Thanks for using our program ")
            break
        otherwise
            disp("Please input a correct value")
           
    end 
    
    
end

end



















