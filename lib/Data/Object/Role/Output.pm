# Output Data Type Role for Perl 5
package Data::Object::Role::Output;

use strict;
use warnings;

use 5.014;

use Type::Tiny;
use Type::Tiny::Signatures;

use Data::Object;
use Data::Object::Role;

# VERSION

sub dump {
    require Data::Dumper;

    local $Data::Dumper::Indent    = 0;
    local $Data::Dumper::Purity    = 0;
    local $Data::Dumper::Quotekeys = 0;

    local $Data::Dumper::Deepcopy  = 1;
    local $Data::Dumper::Deparse   = 1;
    local $Data::Dumper::Sortkeys  = 1;
    local $Data::Dumper::Terse     = 1;
    local $Data::Dumper::Useqq     = 1;

    my $result = Data::Dumper::Dumper(Data::Object::detract_deep(shift));
       $result =~ s/^"|"$//g;

    return $result;
}

sub print {
    return CORE::print(&dump(shift));
}

sub say {
    return CORE::print(&dump(shift), "\n");
}

1;
