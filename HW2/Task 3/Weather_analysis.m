% Author Name: Thomas Yannarella
% Email: Yannar47@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Weather Data Analysis
% Date: 10/11/24

%using hint code to read file
data = readcell('weather_data.txt', 'Delimiter', ',');

%reading the data and catigorizing it
temperature = cell2mat(data(2:end, 2));
humidity = cell2mat(data(2:end, 3));
precipitation = cell2mat(data(2:end, 4));

%Getting the averages
avg_temp = mean(temperature);
avg_humidity = mean(humidity);
total_precip = sum(precipitation);

%Printing averages into a new file
fileID = fopen('weather_summary.txt', 'w');
fprintf(fileID, 'Weather Summary\n');
fprintf(fileID, 'Average Temperature: %.2f Degrees Celsius\n', avg_temp);
fprintf(fileID, 'Average Humidity: %.2f%%\n', avg_humidity);
fprintf(fileID, 'Total Precipitation: %.2fmm\n', total_precip);
fclose(fileID);



