package Stack;
sub new()
{
	my $class = shift;
	my $self = {'stack' => []};
	bless $self,$class;
	return $self;
}

sub pop()
{
	
	my $self = shift;
	if($self->size()==0)
	{
		die("Stack is empty");
	}
	return pop @{$self->{stack}};
}
sub push()
{
	my ($self, $item) = @_;
	push @{$self->{stack}}, $item;
}
sub peek()
{
	my $self = shift;
	if($self->size()==0)
	{
		die("Stack is empty");
	}
	return $self->{stack}[-1];
}
#проверка пустой ли стэк используя тернарный оператор
sub is_empty()
{
	my $self = shift;
	return @{$self->{stack}} ? 0 : 1;
}
sub size()
{
	my $self = shift;
	return scalar @{$self->{stack}};
}
1;