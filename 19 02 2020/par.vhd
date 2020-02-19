entity par is
generic(size: integer := 24); -- esse é o define (em c) que temos em vhdl. Estamos definindo a quantidade de pinos de entrada aqui.
port(input: in bit_vector(size-1 downto 0);
     bp: out bit);

end par;

architecture paridade of par is
signal s: bit_vector(size downto 0);
begin

s(0) <= '0';
--laço
laco: for i in 0 to size-1 generate -- nao pode ir até o final do vetor por causa do s(i+1) que acessaria uma posição inexistente.
	s(i+1) <= s(i) xor input(i);
end generate;
bp <= s(size);

end paridade;