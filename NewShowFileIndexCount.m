function   [Adj,Ids]=NewShowFileIndexCount(Graph, AllFileNames,chromozone ,SpeceficCluster)


indexes=find(chromozone==SpeceficCluster);
[~,CountFile]=size(indexes);

Adj=zeros(CountFile,CountFile);

Newindexes=indexes(1,:) ;

Adj=Graph(Newindexes,Newindexes);
Ids=AllFileNames(Newindexes);
end


