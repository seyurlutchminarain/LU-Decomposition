function [L,U] = LU(A)
N = length(A);
for i = 1:1:N
    for j = 1:1:N
   L(i,j) = 0;
   if (i == j)
        L(i,j) = 1;
   end
   
    end
end
 for k = 1:1:N-1
     if (A(k,k)==0)
        disp("Pivot is zero")
     end
     
     for i = k+1:1:N
         L(i,k) = (A(i,k)/A(k,k));
         A(i,:) = A(i,:) - (A(i,k)/A(k,k))*A(k,:);
        
     end
U = A;
disp(A)
 end
 

end
