module gates(x,y,z,k,l,m,n,a,b,c,d,e,f,g);
   output a;
   output b;
   output c;
   output d;
   output e;
   output f;
   output g;
   
   input x;
   input y;
   input z;   
   
   
   output reg k;
   output reg l; 
   output reg m;
   output reg n;      
   
   not(m,y);          
   not(n,z); 
             
 and(k,x,m);
 or(l,k,n);
 
/*parameter zero =3'b000;
parameter  one = 3'b001;
          
function automatic [6:0] seg;

    input [2:0] num_i; 

begin
    case (num_i)   	
        
      zero : seg<=7'b0000001;
      one  : seg<=7'b1001111;
      
      endcase
        
    
end
endfunction

reg[2:0] display*/

always @(*)
begin

if(l==0)
  begin
  {a,b,c,d,e,f,g}=7'b0000001;
  end
else
   begin
   {a,b,c,d,e,f,g}=7'b1001111;
   end
end
endmodule
