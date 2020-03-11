entity clamod is
port(p,g: in bit_vector(3 downto 0);
     c: out bit_vector(4 downto 0);
	  cin: in bit);
end clamod;

architecture module of clamod is
begin

c(0) <= cin;
c(1) <= g(0) or (cin and p(0));
c(2) <= g(1) or (p(1) and g(0)) or (p(1) and p(0) and cin);
c(3) <= g(2) or (p(2) and g(1)) or (p(2) and p(1) and g(0)) or (p(2) and p(1) and p(0) and cin);
c(4) <= g(3) or (p(3) and g(2)) or (p(3) and p(2) and g(1)) or (p(3) and p(2) and p(1) and g(0)) or (p(3) and p(2) and p(1) and p(0) and cin);

end module;