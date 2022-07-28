module gates(x,y,z,m);
   
   input x;
   input y;
   input z;   
    output wire m;
    reg k,l;
   
        
   
  not(k,x);          
   
             
 and(l,k,z);
 or(m,l,y);
 

endmodule
