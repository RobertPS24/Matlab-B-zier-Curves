function bezier2(b,culoare,drepte)
hold on;
t = 0:0.01:1;
B0 = (1-t) .^ 2;
B1 = 2 * (1-t).*t;
B2 = t.^2;
B=[B0;B1;B2];
f = b * B;
if drepte == "DA"
plot(b(1,1),b(2,1),'b-o','MarkerFaceColor','b')
plot(b(1,end),b(2,end),'b-o','MarkerFaceColor','b')
plot(b(1,:),b(2,:),'b-o');
end
plot(f(1,:),f(2,:),culoare,'LineWidth',2);
 set(gca, 'YDir','normal')
end