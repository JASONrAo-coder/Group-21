all_msg=a_msg; 
all_msg_gf=gf(all_msg,3);
all_code_msg=rs_rscode(all_msg_gf) ;
msg=rand(5,3);
msg=floor(msg*8) 
MSG=gf(msg,3); 
code=rs_rscode(MSG)
a=zeros(5,5);
b=floor(rand(5,2)*8);
noise=[a,b];
NOISE=gf(noise,3); 
in_msg=code+NOISE 
for ii = 1:5 
 new_msg(ii,:) = rs_rrscode(in_msg(ii,:),all_code_msg,all_msg);
end
new_msg
num_same = same(msg,new_msg);
num =num_same/15 
