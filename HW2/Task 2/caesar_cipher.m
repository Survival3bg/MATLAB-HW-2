% Author Name: Thomas Yannarella
% Email: Yannar47@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Simple Encryption Function
% Date: 10/11/24

function message = caesar_cipher(original, shift)
original = char(original);
%convert message to ascii
ascii = double(original);
for i = 1:length(ascii)
    %shift the letters
    if ascii(i) >= 97 && ascii(i) <= 122
        ascii(i) = mod(ascii(i) - 97 + shift, 26) + 97;
    end
end
%convert encrypted message back to letters
message = char(ascii);
end
