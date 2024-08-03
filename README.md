# Mechanical Engineering Case Study – Pipe Friction: The Friction Factor

This project implements a numerical and analytical method to find the friction factor given enough parameters and graph the factor versus different parameters.

## Table of Contents

1. [Problem Statement](#problem-statement)
2. [Gathering Information](#gathering-information)
3. [Input and Output Description](#input-and-output-description)
4. [Test Cases](#test-cases)
5. [Algorithm Design](#algorithm-design)
6. [Implementation](#implementation)
7. [Usage](#usage)
8. [Acknowledgements](#acknowledgements)

## Problem Statement

Using a numerical and analytical method to find the friction factor given enough parameters and graph the factor versus different parameters.

## Gathering Information

Determining fluid flow through pipes and tubes has great relevance in many areas of engineering and science. In mechanical and aerospace engineering, typical applications include the flow of liquids and gases through cooling systems. The resistance to flow in such conduits is parameterized by a dimensionless number called the friction factor. For turbulent flow, the Colebrook equation provides a means to calculate the friction factor.

The Reynolds number serves as the criterion for whether the flow is turbulent (Re > 4000); the Colebrook equation applies under this condition. If Re is less than 4000, it will produce an error.

## Input and Output Description

### Inputs:
- Roughness (e) in millimeters (converted to meters): 0.0001 to 3
- Fluid density (ρ) in kg/m³: 0.5 to 2000
- Dynamic viscosity (μ) in Ns/m²: 10^-6 (air is 18.6x10^-6) to 300 (peanut butter is 250)
- Diameter (d) in meters
- Velocity (v) in m/s
- Upper and lower limits
- Step size

### Outputs:
- Friction factor (analytical and numerical)
- Graphs: Diameter vs. Friction, Roughness vs. Friction, Density vs. Friction, Viscosity vs. Friction (both analytical and numerical)

## Test Cases

### Test Case 1:
- Inputs: 
  - D: 0.05
  - Velocity: 10
  - Viscosity: 1
  - Density: 1
  - Roughness: 0.003
- Expected Output: Re is less than 4000, please input values again

### Test Case 2:
- Inputs:
  - Velocity: 150
  - Viscosity: 10^-3
  - Density: 1.5
  - Roughness: 0.003
  - Upper limit Diameter: 2
  - Lower limit: 0.1
  - Steps: 0.1
- Expected Output: Graphs for Analytical and Numerical friction factors

### Test Case 3:
- Inputs:
  - Velocity: 54
  - Viscosity: 4*10^-2
  - Density: 40
  - Diameter: 1
  - Upper limit roughness: 0.003
  - Lower limit: 0.0002
  - Steps: 0.0001
- Expected Output: Graphs for Analytical and Numerical friction factors

### Test Case 4:
- Inputs:
  - Velocity: 15
  - Diameter: 3
  - Density: 1.5
  - Roughness: 0.0025
  - Upper limit Viscosity: 300
  - Lower limit: 200
  - Steps: 1
- Expected Output: Re should be greater than 4000

### Test Case 5:
- Inputs:
  - Velocity: 123
  - Diameter: 1
  - Viscosity: 10^-2
  - Roughness: 0.0011
  - Upper limit density: 10
  - Lower limit: 20
  - Steps: 1
- Expected Output: Graphs for Analytical and Numerical friction factors

## Algorithm Design

### Pseudocode:
1. **Menu Function:**
   - Display a message explaining the menu options.
   - Initialize `value` to 0.
   - Loop until `value` equals 6:
     - Display menu options.
     - Take input from the user into `value`.
     - Use switch-case for different functionalities based on `value`.
     - Case 1: Calculate numerical and analytical friction factor.
     - Case 2: Graph Diameter vs. Friction factor.
     - Case 3: Graph Roughness vs. Friction factor.
     - Case 4: Graph Density vs. Friction factor.
     - Case 5: Graph Viscosity vs. Friction factor.
     - Case 6: Exit program.

2. **Finding Friction Function (using bisection method):**
   - Initialize `xU` to 5 and `xL` to 0.0001.
   - Compute `xR` as the average of `xU` and `xL`.
   - Check if `g(xR) * g(xL) < 0`.
   - Loop until `|g(xR) * g(xL)|` is less than the tolerance:
     - Update `xR` as the average of `xU` and `xL`.
     - Update `xU` or `xL` based on the sign of `g(xR) * g(xL)`.

3. **Analytical Friction Factor Function (using Swamee-Jain equation):**
   - Compute friction factor using the Swamee-Jain equation.

4. **Graphing Functions:**
   - Graph Diameter, Roughness, Viscosity, Density vs. Friction factor using both numerical and analytical methods.
   - Save graphs as PNG files.

## Implementation

The project is implemented in MATLAB. The functions include input validation, numerical and analytical calculations of the friction factor, and graphing the results.

## Usage

1. **Run the Program:**
   - Open MATLAB.
   - Run the `menu` function to start the program.

2. **Follow the Instructions:**
   - Enter the required parameters based on the chosen menu option.
   - View the results and graphs.

## Acknowledgements

This project is part of the Mechanical Engineering Case Study for ENGR-AD 1000, Fall 2022 by Yousef Al-Jazzazi. The assignment was supervised by Prof. Mohammad Eid.

