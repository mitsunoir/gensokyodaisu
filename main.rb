eval$s=%w'n=$0.split(".")[0].split("
n")[1].to_i+1;puts(n);l1=""<<("1"*n*
6*3)*2*n;s=""<<("1"*n*6+"0"*n*6*2)*2
*n;z=""<<("1"*n*6+"0"*n*6+"1"*n*6)*2
*n;c=(l1+s+l                        
1+z+l1).reve                        
rse.to_i(2);                        
b=[Marshal.d                        
ump(c)].pack("m").gsub("\n","");m=Ma
rshal.load(b.unpack("m")[0]);e="eval
$s=%w"<<39<<($s+"#"+$s*n*9);o="";j=-
1;0.upto(n*10*n*18-1){|i|;o<<((m[i]=
=1)?e[j+=1]:            32);o<<((i%(
18*n)==18*n-            1)?10:"");};
o[-21,20]=""            <<39<<".join
#gensokyodai            su";File.ope
n("6n%d.rb"%n,"w")do|f|;f.puts(o);en
d;system("ruby"<<32<<"6n%d.rb"%n);#n
=$0.split(".")[0].split("n")[1].to_i
+1;puts(n);l1=""'.join#gensokyodaisu
