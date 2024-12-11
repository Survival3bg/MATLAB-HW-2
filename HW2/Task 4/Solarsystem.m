% Author Name: Thomas Yannarella
% Email: Yannar47@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Solar System Vizulaization
% Date: 10/11/24

%Vectors for planet data
planet_names = {'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'};
planet_distances = [0.39, 0.72, 1.00, 1.52, 5.20, 9.58, 19.22, 30.05];
planet_sizes = [0.38, 0.95, 1.00, 0.53, 11.21, 9.45, 4.01, 3.88];

% First subplot
subplot(2, 1, 1);
scatter(planet_distances, planet_sizes, planet_sizes*100, 'filled');
% Add planet names to plot
for i = 1:length(planet_names)
    text(planet_distances(i), planet_sizes(i), ['  ', planet_names{i}]);
end
%setup plot axis and labels
title('Planet Distances vs. Sizes');
xlabel('Distance from Sun (AU)');
ylabel('Relative Size (Earth = 1)');
grid on;

% Second subplot
subplot(2, 1, 2);
bar(planet_distances, 'FaceColor', 'c');
set(gca, 'XTickLabel', planet_names);
title('Planet Distances from the Sun');
xlabel('Planets');
ylabel('Distance (AU)');
grid on;

%Save image as png file
saveas(gcf, 'solar_system_visualization.png');
