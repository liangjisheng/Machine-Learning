clear all;clc;
a=input('Please input a number: ');
while true
    if ~isnumeric(a)
        return;
    else 
        disp(['The number is: ' num2str(a)]);
        a=input('Please input a number: ');
    end
end