% Author Name: Thomas Yannarella
% Email: Yannar47@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Simple Encryption Function
% Date: 10/11/24


%enter message
message = input('Enter a message in lowercase only', 's');
%enter shift value
shift = input('Enter a shift value from 1 to 25');
%call the function
encrypted_message = caesar_cipher(message, shift);
%print original and encrypted message
fprintf('Original message: %s\n', message);
fprintf('Encrypted message: %s\n', encrypted_message);