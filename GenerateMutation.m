function mutpop=GenerateMutation( pop,npop,ClusterNumber,nmut,FileNumber)

field1='chromozone';
value1=zeros(1,FileNumber);
field2='chromozonefitness'; 
value2=zeros(1);
MutPop=struct(field1,value1,field2,value2);

mutpop(nmut)=MutPop;



for i=1:nmut
 
    index=randi([1,npop]);
    MPop=pop(index);
   
    index1=randi([1,FileNumber],1,1);
     MPop.chromozone(index1)=randi([1,ClusterNumber],1,1);
  
    mutpop(i)=MPop;
   mutpop(i).chromozonefitness=0.0;
end

end



