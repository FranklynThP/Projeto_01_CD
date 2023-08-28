library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity projeto_1 is
    port(A,B,C,D: in std_logic;
        s : out std_logic_vector(0 to 14));
end projeto_1;

architecture log of projeto_1 is

begin
    s(0) <= A or B or C or not D; --e
    s(1) <= not B or C or D; --f
    s(2) <= A or B or C or not D; --g
    s(3) <= A or C or not D;--h
    s(4) <= A or (B xor C) or not D;--i
    s(5) <= A or (B and not C) or (B and not D) or (not C and not D) or (not B and C and D);--j
    s(6) <= A or (B xor C) or not D;--k
    s(7) <= A or not B or (C xor D);--l
    s(8) <= C or A or (not B and not D) or (B and D);--m
    s(9) <= (A and (B or C or not D)) or (C and (B or not D)) or (not B and not D); --n
    s(10) <= A or (B xor C) or not D;--o
    s(11) <= not C;--p
    s(12) <= not A and not B and not C and D;--q
    s(13) <= A or B or C or D;--r
    s(14) <= not A and not B and not C and D;--s
end log;