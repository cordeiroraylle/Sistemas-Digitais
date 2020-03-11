-- definiu as portas
entity cla4b is 
port(a,b: in bit_vector(3 downto 0);
	  s: out bit_vector(3 downto 0);
	  cin: in bit;
	  cout: out bit);
end cla4b;

architecture cla of cla4b is
-- definiu os componentes
component halfadder is
port(a,b: in bit;
	  p, g: out bit);
end component;

component clamod is
port(p,g: in bit_vector(3 downto 0);
     c: out bit_vector(4 downto 0);
	  cin: in bit);
end component;

-- nomeou ou jumpers
signal c: bit_vector(4 downto 0);
signal p, g: bit_vector(3 downto 0);

begin
-- criar 4 instancias do halfadder, ligar os fios e add a parte de baixo que tem no slide
ha0: halfadder port map(a(0), b(0), p(0), g(0));
ha1: halfadder port map(a(1), b(1), p(1), g(1));
ha2: halfadder port map(a(2), b(2), p(2), g(2));
ha3: halfadder port map(a(3), b(3), p(3), g(3));

module: clamod port map(p,g,c,cin); 
-- fim da parte da cima

s <= c(3 downto 0) xor p;
cout <= c(4);

end cla;