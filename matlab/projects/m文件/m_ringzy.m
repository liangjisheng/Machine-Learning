% call function ringzy
if 0
r1=1;r2=3; 
[x1,y1,x2,y2,s1,s2]=ringzy(r1); 
[x1,y1,x2,y2]=ringzy(r1,r2); 
[x1,y1,x2,y2,s1,s2]=ringzy(r1,r2); 
plot(x1,y1,x2,y2);
end

r1=1;r2=0.6; 
subplot(1,3,1),ringzy(r1,r2), 
subplot(1,3,2),ringzy(r1,r2,'Marker','o') 
subplot(1,3,3),ringzy(r1,r2,'LineWidth',5,'Color',[1 0.4 0]);