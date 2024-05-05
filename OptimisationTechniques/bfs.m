clear all
clc
A=[2,3,-1,4;1,2,6,-7];
B=[8;-3];
C=[2 3 4 7];
n=size(A,2);
m=size(A,1);
if n>m
    nCm=nchoosek(n,m);%combinations reqd
    p=nchoosek(1:n,m);
    sol=[];
    for i=1:nCm
        y=zeros(n,1);
        A1=A(:,p(i,:));
        x=inv(A1)*B;
        if all(x>=0&x~=inf&x~=-inf)
            y(p(i,:))=x;
            sol=[sol y];
        end
    end
else
    error('no of var not greater than no of eqn');
end
z=C*sol
[obj,index]=max(z)
sol(:,index)