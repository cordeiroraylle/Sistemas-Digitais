entity ci7404 is
port(a:in bit_vector(5 downto 0);
	  y: out bit_vector(5 downto 0));
end ci7404;

architecture miolo of ci7404 is
begin
	y <= not a;

end miolo;
