use strict;
use warnings;
use reznikovskiy02;

my $stack = Stack->new();

$stack->push("Bob");
$stack->push("Alice");
$stack->push("Julia");
$stack->push("John");
$stack->push("Samanta");
my $size = $stack->size();

for my $i (1..$size) 
{
   
    print($stack->pop()."\n");
}
#exception stack is empty
print($stack->pop());


