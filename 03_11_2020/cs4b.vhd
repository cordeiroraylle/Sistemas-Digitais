-- atenção: os arquivos estao todos em pastas diferentes. Nao pode. 

entity cs4b is
port(a,b: in bit_vector(3 downto 0);
	  s: out bit_vector(3 downto 0);
	  cin: in bit;
	  cout: out bit);
end cs4b;

architecture cs of cs4b is

component cla4b is 
port(a,b: in bit_vector(3 downto 0);
	  s: out bit_vector(3 downto 0);
	  cin: in bit;
	  cout: out bit);
end component;

signal s0, s1: bit_vector(3 downto 0);
signal cout0, cout1: bit;

begin
cla0: cla4b port map(a,b,s0,'0', cout0);
cla1: cla4b port map(a,b,s1,'1', cout1);

-- implementar o mux
s <= s0 when cin = '0' else s1;
cout <= cout0 when cin = '0' else cout1;

end cs;