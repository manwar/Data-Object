use strict;
use warnings;

use Test::More;
use Data::Object::Class::Syntax ();

my @exports = qw(
    builder
    clearer
    coerce
    default
    handles
    init_arg
    is
    isa
    lazy
    optional
    predicate
    reader
    required
    ro
    rw
    trigger
    weak_ref
    writer
);

can_ok 'Data::Object::Class::Syntax', @exports;
is_deeply [@exports], [@Data::Object::Class::Syntax::EXPORT];

subtest 'test the builder function' => sub {
    is_deeply [Data::Object::Class::Syntax::builder()], [
        builder => 1,
    ];
    is_deeply [Data::Object::Class::Syntax::builder('_build_attr')], [
        builder => '_build_attr',
    ];
};

subtest 'test the clearer function' => sub {
    is_deeply [Data::Object::Class::Syntax::clearer()], [
        clearer => 1,
    ];
    is_deeply [Data::Object::Class::Syntax::clearer('_clear_attr')], [
        clearer => '_clear_attr',
    ];
};

subtest 'test the coerce function' => sub {
    is_deeply [Data::Object::Class::Syntax::coerce()], [
        coerce => 1,
    ];
};

subtest 'test the default function' => sub {
    is_deeply [Data::Object::Class::Syntax::default(undef)], [
        default => undef,
    ];
    is_deeply [Data::Object::Class::Syntax::default('foobarbaz')], [
        default => 'foobarbaz',
    ];
};

subtest 'test the handles function' => sub {
    is_deeply [Data::Object::Class::Syntax::handles('SomeRole')], [
        handles => 'SomeRole',
    ];
    is_deeply [Data::Object::Class::Syntax::handles(['foo', 'bar'])], [
        handles => ['foo', 'bar'],
    ];
    is_deeply [Data::Object::Class::Syntax::handles({ this => 'that' })], [
        handles => { this => 'that' },
    ];
};

subtest 'test the init_arg function' => sub {
    is_deeply [Data::Object::Class::Syntax::init_arg('altattr')], [
        init_arg => 'altattr',
    ];
};

subtest 'test the is function' => sub {
    is_deeply [Data::Object::Class::Syntax::is(1..9)], [
        1..9,
    ];
};

subtest 'test the isa function' => sub {
    my $code = sub { 1 };
    is_deeply [Data::Object::Class::Syntax::isa($code)], [
        isa => $code,
    ];
};

subtest 'test the lazy function' => sub {
    is_deeply [Data::Object::Class::Syntax::lazy()], [
        lazy => 1,
    ];
};

subtest 'test the optional function' => sub {
    is_deeply [Data::Object::Class::Syntax::optional()], [
        required => 0,
    ];
};

subtest 'test the predicate function' => sub {
    is_deeply [Data::Object::Class::Syntax::predicate()], [
        predicate => 1,
    ];
    is_deeply [Data::Object::Class::Syntax::predicate('_has_attr')], [
        predicate => '_has_attr',
    ];
};

subtest 'test the reader function' => sub {
    is_deeply [Data::Object::Class::Syntax::reader()], [
        reader => 1,
    ];
    is_deeply [Data::Object::Class::Syntax::reader('_get_attr')], [
        reader => '_get_attr',
    ];
};

subtest 'test the required function' => sub {
    is_deeply [Data::Object::Class::Syntax::required()], [
        required => 1,
    ];
};

subtest 'test the ro function' => sub {
    is_deeply [Data::Object::Class::Syntax::ro()], [
        is => 'ro',
    ];
};

subtest 'test the rw function' => sub {
    is_deeply [Data::Object::Class::Syntax::rw()], [
        is => 'rw',
    ];
};

subtest 'test the trigger function' => sub {
    is_deeply [Data::Object::Class::Syntax::trigger()], [
        trigger => 1,
    ];
    is_deeply [Data::Object::Class::Syntax::trigger('_trigger_attr')], [
        trigger => '_trigger_attr',
    ];
};

subtest 'test the weak_ref function' => sub {
    is_deeply [Data::Object::Class::Syntax::weak_ref()], [
        weak_ref => 1,
    ];
};

subtest 'test the writer function' => sub {
    is_deeply [Data::Object::Class::Syntax::writer()], [
        writer => 1,
    ];
    is_deeply [Data::Object::Class::Syntax::writer('_set_writer')], [
        writer => '_set_writer',
    ];
};

ok 1 and done_testing;