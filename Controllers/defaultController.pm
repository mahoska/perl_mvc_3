package Controllers::defaultController;

use strict;
use warnings;
use vars qw(%hash $text2);


use Controller;
@ISA = qw(Controllers::Controller);

sub homePageAction;


    my $class = ref($_[0])||$_[0];
    return bless{}, $class;
}

sub homePageAction
{
 my ($self) = @_;
 
 # %hash = ('name'=>'name',
          # '123'=>'321');

 # require "html.pl";
 # #print "Content-type: text/html; charset=utf-8\n\n";
 return "text2";

}

1;