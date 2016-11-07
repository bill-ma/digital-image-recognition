%compare with actual results

load float.mat;

counter = 0;

for i = 1:100
   %a = neural(i,data_uint8,w1_8,w2_8,wf_8,b1_8,b2_8);
   a = neural(i,testData,w1,w2,wf,b1,b2);
   if a == labels(i)
       counter = counter + 1;
   end
end

counter