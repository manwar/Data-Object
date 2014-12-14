# A Comparison Data Type Role for Perl 5
package Data::Object::Role::Comparison;

use 5.010;
use Moo::Role;

with 'Data::Object::Role::Item';

# VERSION

requires 'eq';
requires 'eqtv';
requires 'gt';
requires 'gte';
requires 'lt';
requires 'lte';
requires 'ne';

1;