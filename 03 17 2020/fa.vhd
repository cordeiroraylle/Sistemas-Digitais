library ieee;
use ieee.std_logic_1164.all;


entity fa is
port(a,b,cin: in std_logic;
	  s, cout: out std_logic);
end fa;

architecture fa of fa is

signal temp: std_logic;

begin

-- codigo full adder padrão
temp <= a xor b;
s <= temp xor cin;
cout <= (a and b) or (temp and cin);

end fa;