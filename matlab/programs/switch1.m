clear all;clc;
method='linear';
switch lower(method)
    case {'linear','bilinear'}
        disp('method is linear');
    case 'cubic'
        disp('method is cubic');
    case 'nearest'
        disp('method is nearest');
    otherwise
        disp('Unknow method');
end