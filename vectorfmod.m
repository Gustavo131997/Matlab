function [x]=vectorfmod(vector)to
    x=[];
for i=1:length(vector)
    x(i)=funcionfmod(vector(i));
end
plot(x,'r')
end