eval$s=%w'n=$0.split(".")[0].split("n")[1].to_i+1;l1="
"<<("1"*n*6*3<<10)*2*n;l2=""<<("1"*n*6+"0"*n*6*2<<10)*
2*n;l4=""<<("1"*n*6+"0"*n*6+"1"*n*6<<10)*2*n;aa=l1+l2+
l1+l4+l1;c=aa.gsub("\n","").reverse.to_i(2);puts(aa.co
unt("1"));b=[Marshal.dump(c)].pack("m").gsub("\n","");
m=Marshal.load(b.unpack("m")[0]);e="eval$s=%w"<<39<<($
s+"#"+$s*n*9);o=""                                    
;j=-1;0.upto(n*10*                                    
n*18-1){|i|;o<<((m                                    
[i]==1)?e[j+=1]:32                                    
);o<<((i%(18*n)==1                                    
8*n-1)?10:"");};o[                                    
-21,20]=""<<39<<".join#gensokyodaisu";File.open("6n%d.
rb"%n,"w")do|f|;f.puts(o);end;system("ruby"<<32<<"6n%d
.rb"%n);#n=$0.sp#n=$0.split(".")[0].split("n")[1].to_i
+1;l1=""<<("1"*n*6*3<<10)*2*n;l2=""<<("1"*n*6+"0"*n*6*
2<<10)*2*n;l4=""<<("1"*n*6+"0"*n*6+"1"*n*6<<10)*2*n;aa
=l1+l2+l1+l4+l1;c=aa.gsub("\n","").reverse.to_i(2);put
s(aa.count("1"));b                  =[Marshal.dump(c)]
.pack("m").gsub("\                  n","");m=Marshal.l
oad(b.unpack("m")[                  0]);e="eval$s=%w"<
<39<<($s+"#"+$s*n*                  9);o="";j=-1;0.upt
o(n*10*n*18-1){|i|                  ;o<<((m[i]==1)?e[j
+=1]:32);o<<((i%(1                  8*n)==18*n-1)?10:"
");};o[-21,20]=""<<39<<".join#gensokyodaisu";File.open
("6n%d.rb"%n,"w")do|f|;f.puts(o);end;system("ruby"<<32
<<"6n%d.rb"%n);#n=$0.spn=$0.split(".")[0].split("n")[1
].to_i+1;l1=""<<("1"*n*6*3<<10)*2*n;l2=""<<("1"*n*6+"0
"*n*6*2<<10)*2*n;l4=""<<("1"*n*6+"0"*n*6+"1"*n*6<<10)*
2*n;aa=l1+l2+l1+l4+l1;c=aa.gsub("\'.join#gensokyodaisu