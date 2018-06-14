clear all;clc;
a=input('Please input a number:');
if ~isnumeric(a)
    disp('Please input a number:');
elseif a>0
    disp([num2str(a) ' is a positive number.']);
elseif a<0
    disp([num2str(a) ' is a negetive number.']);
else 
    disp([num2str(a) ' is 0']);
end
disp('Thank you,bye.');