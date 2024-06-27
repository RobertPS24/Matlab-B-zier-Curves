function bezier3(b,culoare,drepte)
hold on;
t = 0:0.01:1;
B0 = (1-t).^3;
B1 = 3*(1-t).^2 .* t;
B2 = 3*(1-t).*t.^2;
B3 = t.^3;
B = [B0;B1;B2;B3];
f=b*B;
if drepte == "DA"
plot(b(1,1),b(2,1),'b-o','MarkerFaceColor','b')
plot(b(1,end),b(2,end),'b-o','MarkerFaceColor','b')
plot(b(1,:),b(2,:),'b-o');
end
plot(f(1,:),f(2,:),culoare,'LineWidth',2);
 set(gca, 'YDir','normal')
end