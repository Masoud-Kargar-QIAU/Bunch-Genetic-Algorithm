function pop= CreatePopulation(npop,FileNumber,ClusterNumber )
field1='chromozone';
value1=zeros(1,FileNumber);
field2='chromozonefitness'; 
value2=zeros(1);
Pop=struct(field1,value1,field2,value2);

pop(npop)=Pop;


for i=1:npop
 pop(i).chromozone = randi([1,ClusterNumber],1,FileNumber); 
end

end