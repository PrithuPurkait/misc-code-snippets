allclear;
N = 100; M = 100;
for rep = 1:10
    figure('Color','k', 'Position',[0 0 1920 1080],'ToolBar','none','MenuBar','none'); 
    tiledlayout(1, 1, "TileSpacing","tight", "Padding","tight")
    nexttile
    hold on
    
    for iter = 1:N
        x1 = 2*rand(1)-1; x2 = 2*rand(1)-1;
        w = rand(1)+0.5;
        color = [0.6+(w-1)/5 0.4 0.7-(w-1)/5];
        plot([ x1  x2], [-1 1], 'Color', color,'LineWidth',w);
        plot([-x1 -x2], [-1 1], 'Color', color,'LineWidth',w);
    end
    for iter = 1:M
        y1 = 2*rand(1)-1; y2 = 2*rand(1)-1;
        w = rand(1)+0.5;
        color = [0.6+(w-1)/5 0.2 0.7-(w-1)/5];
        plot([-1  1], [y1 y2], 'Color', color,'LineWidth',w);
        plot([ 1 -1], [y1 y2], 'Color', color,'LineWidth',w);
    end
    xlim([-1 1]); ylim([-1 1]);
    %axis square; 
    axis off; 
    hold off;
    set(gca,'LooseInset',get(gca,'TightInset'));
    exportgraphics(gcf, ['iter_plot_' num2str(rep) '.png'], 'Resolution', 900, 'BackgroundColor', 'k');
    close all;
end
