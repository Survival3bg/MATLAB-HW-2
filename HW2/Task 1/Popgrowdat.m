% Author Name: Thomas Yannarella
% Email: Yannar47@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Population Growth Analysis
% Date: 10/11/24

%Create vector for population
population = [5000 5200 5350 5600 5800];

%Use code from hint for growth rate
growth_rate = (population(2:end) - population(1:end-1)) ./population(1:end-1);

%use code for pop_data
pop_data = [population; [0 growth_rate]];

%print table with population and growth
fprintf("Year | Population | Growth Rate\n")
for i=1:length(population)
    fprintf("%d | %d | %f \n", i, pop_data(1, i), pop_data(2, i))
end




