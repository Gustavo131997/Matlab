function [x]=vectorf(vector)
    x=[];
for i=1:length(vector)
    x(i)=funcionf(vector(i));
end
plot(x, 'g')
end