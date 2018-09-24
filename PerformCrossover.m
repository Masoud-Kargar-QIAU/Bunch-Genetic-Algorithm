function [newChromosome1, newChromosome2] = PerformCrossover( c1, c2 ,ClusterNumber)
 
 
   Len=length(c2);
   BreakIndex =randi([1,Len-1],1,ClusterNumber-1);

[v1,l1]=sort(BreakIndex,'ascend');
BreakIndex=BreakIndex(l1);
BreakIndex=unique(BreakIndex);
BreakIndex=[1 BreakIndex Len+1];

b11=BreakIndex(1);
b12=BreakIndex(2)-1;
newChromosome1 = c1( b11:b12);
newChromosome2 = c2( b11:b12);

for i=2:length(BreakIndex)-1
if rem (i , 2) ~=0
    b11=BreakIndex(i);
    b12=BreakIndex(i+1)-1;
    newChromosome1 = [ newChromosome1  c1( b11:b12) ];
    newChromosome2 = [ newChromosome2  c2( b11:b12) ];

else 
    b11=BreakIndex(i);
    b12=BreakIndex(i+1)-1;
    newChromosome1 = [ newChromosome1  c2( b11:b12) ];
    newChromosome2 = [ newChromosome2  c1( b11:b12) ];

end 
end 