function castelijeau3(b,culoare,drepte)
hold on;
t=0:0.01:1;%parametrul
B0=(1-t).^3;
B1=3*(1-t).^2.*t;
B2=3*(1-t).*(t.^2);
B3=t.^3;
%pol bernstein in camp de vect
B=[B0;B1;B2;B3];
f=b*B; %curba bezier
hold on
%repr
plot(f(1,:),f(2,:),culoare,'LineWidth',2);
t=1/2;
b1=zeros(2,3); b2=zeros(2,2);
b3=zeros(2,1);
for i=1:3
b1(:,i)=b(:,i)*(1-t)+b(:,i+1)*t;
end
for i=1:2
b2(:,i)=b1(:,i)*(1-t)+b1(:,i+1)*t;
end
b3(:,1)=b2(:,1)*(1-t)+b2(:,2)*t;
if drepte == "DA"
    plot(b(1,1),b(2,1),'r-o','MarkerFaceColor','r')
plot(b(1,end),b(2,end),'r-o','MarkerFaceColor','r')
plot(b(1,:),b(2,:),'r-o')
plot(b1(1,:),b1(2,:),'g-o')
plot(b1(1,1),b1(2,1),'g-o','MarkerFaceColor','g')
plot(b1(1,end),b1(2,end),'g-o','MarkerFaceColor','g')
plot(b2(1,:),b2(2,:),'k-o')
plot(b2(1,1),b2(2,1),'k-o','MarkerFaceColor','k')
plot(b2(1,end),b2(2,end),'k-o','MarkerFaceColor','k')
plot(b3(1,:),b3(2,:),'mo')
plot(b2(1,1),b2(2,1),'mo','MarkerFaceColor','m')
plot(b3(1,end),b3(2,end),'mo','MarkerFaceColor','m')
end
set(gca, 'YDir','normal')
