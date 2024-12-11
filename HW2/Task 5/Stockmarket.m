% Author Name: Thomas Yannarella
% Email: Yannar47@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Stock Market Analysis
% Date: 10/11/24

stock_prices = load('stock_data.txt');

%Calculate averages ans stats
average_price = mean(stock_prices);
highest_price = max(stock_prices);
lowest_price = min(stock_prices);
price_increase_days = sum(diff(stock_prices) > 0); % Number of days with price increase

%Print calculated values
fprintf('Average Closing Price: %.2f\n', average_price);
fprintf('Highest Closing Price: %.2f\n', highest_price);
fprintf('Lowest Closing Price: %.2f\n', lowest_price);
fprintf('Days Stock Price Increased: %d\n', price_increase_days);

%Create a line plot of the stock prices
figure;
days = 1:length(stock_prices);

plot(days, stock_prices, '-o', 'DisplayName', 'Daily Closing Price'); % Daily prices
hold on;
yline(average_price, 'r--', 'LineWidth', 1.5, 'DisplayName', 'Average Price'); % Average price
yline(highest_price, 'g--', 'LineWidth', 1.5, 'DisplayName', 'Highest Price'); % Highest price
yline(lowest_price, 'b--', 'LineWidth', 1.5, 'DisplayName', 'Lowest Price'); % Lowest price

%Add title and labels
title('Stock Price Analysis over 30 Days');
xlabel('Day');
ylabel('Price');
legend('Location', 'best');
grid on;

%Save the plot as png
saveas(gcf, 'stock_analysis.png');

%Write the summary to 'stock_summary.txt'
fileID = fopen('stock_summary.txt', 'w');
fprintf(fileID, 'Stock Price Analysis Summary:\n');
fprintf(fileID, 'Average Closing Price: %.2f\n', average_price);
fprintf(fileID, 'Highest Closing Price: %.2f\n', highest_price);
fprintf(fileID, 'Lowest Closing Price: %.2f\n', lowest_price);
fprintf(fileID, 'Days Stock Price Increased: %d\n', price_increase_days);
fclose(fileID);