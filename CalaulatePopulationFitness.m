 
function Population=CalaulatePopulationFitness(GraphDependency,Population,ClusterNumber,FileNumber)

[~, npop]=size(Population);
mat=zeros(npop,ClusterNumber);

for i=1:npop

    for j=1:ClusterNumber
    ClusterIndex=find(Population(i).chromozone==j);
    [A,B]=size(ClusterIndex);
    mat(i,j,1:B)=ClusterIndex;
    end

end

matTurboMCE=zeros(npop,ClusterNumber);
x=zeros(1,FileNumber);
for i=1:npop

    for j=1:ClusterNumber
    
        x= reshape (mat(i,j,:),1,[]);
        x(x==0)=[];
        SubGraphMatrixIndex=x;
        G1=GraphDependency(SubGraphMatrixIndex,SubGraphMatrixIndex);
        InternalLinkSum=sum(G1(:))/2;

   
        G2=GraphDependency;
        G2(SubGraphMatrixIndex,SubGraphMatrixIndex)=0;
        G3=G2(SubGraphMatrixIndex,:);
        ExtenalLinkSum=sum(G3(:));
        
        m=(2*InternalLinkSum)/(2*InternalLinkSum + ExtenalLinkSum);
        matTurboMCE(i,j)=m;
    
    end

    Population(i).chromozonefitness=sum(matTurboMCE(i,:)); 
end


         
end
  











