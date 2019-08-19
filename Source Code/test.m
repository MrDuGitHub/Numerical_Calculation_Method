p = []
x = 1:1:length(p);
h=plot(x,p,'-r','LineWidth',1); hold on;
h=[h,plot(x,p,'ob')];
title('P_0 = 10\pi');
legend(h(2),'X_i');
xlabel('Iterations');
ylabel('X_i');
set(gcf,'unit','centimeters','position',[10 0 25 20]);
set(gca, 'XTick', 1:1:20);
set(gca, 'YTick', [0:0.1:1]);
set(gca,'linewidth',1);
set(get(gca,'title'),'FontWeight','bold','FontSize',15,'FontName','songti');%\
set(get(gca,'XLabel'),'FontWeight','bold','FontSize',15,'FontName','Times New Roman');%
set(get(gca,'YLabel'),'FontWeight','bold','FontSize',15,'FontName','Times New Roman');%
set(gca,'FontWeight','bold','FontName','Times New Roman','FontSize',15)%
print('-painters','-dpng','../figure/4.png','-r300');