function [f]= BioGraphViewer (Adj,ids)

%Adj is a AdjacencyMatrix
%ids is nodes or vertexes labels




%ids = {'a','b','c','d','e','f','g','h','i'};  

bg = biograph(Adj,ids,'ShowArrows','on','ShowWeights','on','EdgeType','straight','LayoutType','equilibrium');



g = biograph.bggui(bg);
set(gcf,'units','normalized','outerposition',[0 0 1 1])
f = figure('units','normalized','outerposition',[0 0 1 1]);
set(f, 'Visible', 'off')
copyobj(g.biograph.hgAxes,f);



child_handles = allchild(0);
names = get(child_handles,'Name');
k = find(strncmp('Biograph Viewer', names, 15));
close(child_handles(k));         


end