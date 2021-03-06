use strict;
use warnings;
use Test::More;

use_ok 'Data::Object::Number';

ok Data::Object::Number->does('Data::Object::Role::Comparison');
ok Data::Object::Number->does('Data::Object::Role::Defined');
ok Data::Object::Number->does('Data::Object::Role::Detract');
ok Data::Object::Number->does('Data::Object::Role::Dumper');
ok Data::Object::Number->does('Data::Object::Role::Item');
ok Data::Object::Number->does('Data::Object::Role::Numeric');
ok Data::Object::Number->does('Data::Object::Role::Output');
ok Data::Object::Number->does('Data::Object::Role::Throwable');
ok Data::Object::Number->does('Data::Object::Role::Type');
ok Data::Object::Number->does('Data::Object::Role::Value');

can_ok 'Data::Object::Number', 'abs';
can_ok 'Data::Object::Number', 'atan2';
can_ok 'Data::Object::Number', 'cos';
can_ok 'Data::Object::Number', 'data';
can_ok 'Data::Object::Number', 'decr';
can_ok 'Data::Object::Number', 'defined';
can_ok 'Data::Object::Number', 'detract';
can_ok 'Data::Object::Number', 'downto';
can_ok 'Data::Object::Number', 'dump';
can_ok 'Data::Object::Number', 'eq';
can_ok 'Data::Object::Number', 'exp';
can_ok 'Data::Object::Number', 'ge';
can_ok 'Data::Object::Number', 'gt';
can_ok 'Data::Object::Number', 'hex';
can_ok 'Data::Object::Number', 'incr';
can_ok 'Data::Object::Number', 'int';
can_ok 'Data::Object::Number', 'le';
can_ok 'Data::Object::Number', 'log';
can_ok 'Data::Object::Number', 'lt';
can_ok 'Data::Object::Number', 'methods';
can_ok 'Data::Object::Number', 'mod';
can_ok 'Data::Object::Number', 'ne';
can_ok 'Data::Object::Number', 'neg';
can_ok 'Data::Object::Number', 'new';
can_ok 'Data::Object::Number', 'pow';
can_ok 'Data::Object::Number', 'print';
can_ok 'Data::Object::Number', 'roles';
can_ok 'Data::Object::Number', 'say';
can_ok 'Data::Object::Number', 'sin';
can_ok 'Data::Object::Number', 'sqrt';
can_ok 'Data::Object::Number', 'throw';
can_ok 'Data::Object::Number', 'to';
can_ok 'Data::Object::Number', 'type';
can_ok 'Data::Object::Number', 'upto';

ok 1 and done_testing;
