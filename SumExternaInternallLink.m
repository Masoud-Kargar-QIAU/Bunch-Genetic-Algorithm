function [ InternalLinkSum ,ExtenalLinkSum ] = SumExternaInternallLink(NewGraph,SubGraphMatrixIndex)

G1=NewGraph(SubGraphMatrixIndex,SubGraphMatrixIndex);
InternalLinkSum=sum(G1(:))/2;


G2=NewGraph;
G2(SubGraphMatrixIndex,SubGraphMatrixIndex)=0;
G3=G2(SubGraphMatrixIndex,:);
ExtenalLinkSum=sum(G3(:));
end

