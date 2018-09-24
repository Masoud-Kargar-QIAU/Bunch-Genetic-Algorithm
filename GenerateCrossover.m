function crosspop=GenerateCrossover(pop,npop,ClusterNumber,ncross,FileNumber)

field1='chromozone';
value1=zeros(1,FileNumber);
field2='chromozonefitness'; 
value2=zeros(1);
CrossPop=struct(field1,value1,field2,value2);

crosspop(ncross)=CrossPop;

for i=1:2:ncross
 
    index1=randi([1,npop]);
    CrossPop1=pop(index1);
    CrossPop1.chromozonefitness=0.0;
     
    index2=randi([1,npop]);
    CrossPop2=pop(index2);
    CrossPop2.chromozonefitness=0.0;

    
    c1=CrossPop1(1).chromozone;
    c2=CrossPop2(1).chromozone;

    [crosspop(i).chromozone, crosspop(i+1).chromozone] = PerformCrossover( c1, c2 ,ClusterNumber);
  
end

end

