library ieee;
use ieee.std_logic_1164.all;


entity ripple_carry is
generic (size: integer := 8);

port(a,b: in std_logic_vector(size-1 downto 0);
     s: out std_logic_vector(size-1 downto 0);
	  cin: in std_logic;
	  cout: out std_logic);
end ripple_carry;

architecture rc of ripple_carry is

component fa is
port(a,b,cin: in std_logic;
	  s, cout: out std_logic);
end component;

signal carry: std_logic_vector(size downto 0);

begin

-- laço de memoria
laco: for i in 0 to size-1 generate
	adder: fa port map (a(i), b(i), carry(i), s(i), carry(i+1));
end generate;

carry(0) <= cin;
cout <= carry(size);

end rc;