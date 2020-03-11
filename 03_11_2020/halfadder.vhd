entity halfadder is
port(a,b: in bit;
	  p, g: out bit);
end halfadder;

architecture half of halfadder is
begin
g <= a and b;
p <= a xor b;


end half;