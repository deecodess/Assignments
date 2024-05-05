clc
clear all
%Phase 1: i/p parameters
c=[2 3];
A=[-1 3; 1 1; 1 -1];
b=[10; 6; 2];
%Phase 2:Plotting Lines
p=max(b);
x1=0:1:p;
x21=(b(1)-A(1,1).*x1)/A(1,2);
x22=(b(2)-A(2,1).*x1)/A(2,2);
x23=(b(3)-A(3,1)*x1)/A(3,2);
x21=max(0,x21);
x22=max(0,x22);
x23=max(0,x23);
plot(x1,x21,'r',x1,x22,'g',x1,x23,'b');
title('x1 v/s x2');
xlabel('Value of x1');
ylabel('Value of x2');
legend('-x1+3x2=10','x1+x2=6','x1-x2=2');
%Phase 3: Find corner points with axis
cx1=find(x1==0);
cx21=find(x21==0);
cx22=find(x22==0);
cx23=find(x23==0);
Line1=[x1([cx21 cx1]);x21([cx21 cx1])]';
Line2=[x1([cx22 cx1]);x21([cx22 cx1])]';
Line3=[x1([cx23 cx1]);x21([cx23 cx1])]';
cpts=unique([Line1;Line2;Line3],'rows');
%Phase 4:Intersecting Points which do not lie on the axis
pt=[0 ;0];
for i=1:size(A,1)
    for j=i+1:size(A,1)
        A1=A([i, j],:);
        B1=b([i, j],:);
        x=inv(A1)*B1;
        pt=[pt x];
    end
end
ipts=pt';
%Phase 5: Combining Corner points an intersecting Points
allcpt=unique([cpts;ipts],'rows');
%Phase 6: Feasible Region
for i=1:size(allcpt,1)
    cons1(i)=A(1,1)*allcpt(i,1)+A(1,2)*allcpt(i,2)-b(1);
    cons2(i)=A(2,1)*allcpt(i,1)+A(3,2)*allcpt(i,2)-b(2);
    cons3(i)=A(3,1)*allcpt(i,1)+A(3,2)*allcpt(i,2)-b(3);
end
s1=find(cons1>0);
s2=find(cons2>0);
s3=find(cons3>0);
s=unique([s1,s2,s3]);
allcpt(s,:)=[];
%Phase 7:Feasible Points
Value=allcpt*c'
[obj,index]=max(Value);
x1=allcpt(index,1)
x2=allcpt(index,2)
label=[allcpt Value]