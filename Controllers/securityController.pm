package Controllers::securityController;

use strict;
use warnings;


use vars qw(@ISA);
use Controller;

use DBI;

@ISA = qw(Controllers::Controller);

sub isUserAction;

# sub new{
    # my $class = ref($_[0])||$_[0];
    # return bless{}, $class;
# }


sub isUserAction{
     my ($self) = @_;

      my $sth = ($self->get('db_connect'))->prepare("SELECT `key`,`data` FROM my_test ") or die $DBI::errstr;
     
     $sth->execute();
     my $hashKey = ();
     
     while(my $row = $sth->fetchrow_hashref())
     {
        $hashKey->{$row->{'key'}}=$row->{'data'};
        
    }
    
   return  $hashKey->{'user152_t12'};
     
 
}

1;