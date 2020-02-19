entity testbench is
end testbench;

architecture test of testbench is

component par is
generic(size: integer := 8); -- podemos mudar porque como é generic o vhdl ta ciente de que pode mudar
port(input: in bit_vector(size-1 downto 0);
     bp: out bit);

end component;

-- precisa criar os fiozinhos pra testar. Entao vamos criar um signal em bit pra sair e um vetor de bits pra entrar (signal tbm)
signal saida: bit;
signal entrada: bit_vector(7 downto 0); -- nao é size-1 porque ela nao existe no testbench. Só em par e por isso no component.

begin

dut: par port map (entrada, saida); -- entrada porque no component primeiro temos o input

entrada <=  "00000000",						--0
				"01101000" after 10 ns,		--1
				"10000010" after 20 ns, 	--0
				"01110011" after 30 ns,		--1
				"00100100" after 40 ns, 	--0
				"01110000" after 50 ns,		--1
				"00000000" after 60 ns;		--0
end test;