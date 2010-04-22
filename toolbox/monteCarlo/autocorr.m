function c = autocorr(x,maxlag)

if nargin < 2
    maxlag=length(x)-1;
end
[m,n]=size(x);
c=zeros(maxlag,n);
for i1=1:n
    ct=xcorr(x(:,i1)-mean(x(:,i1)));
    ct=ct(maxlag+2:end);
    c(:,i1)=ct;
end
end
function x = xcorr(a,b)
x = conv(fliplr(a),b);
end
