package Catalyst::Model::REST::Response;
BEGIN {
  $Catalyst::Model::REST::Response::VERSION = '0.22';
}
use 5.010;
use Moose;

has 'code' => (
    isa => 'Int',
    is  => 'ro',
);
has 'response' => (
    isa => 'HashRef',
    is  => 'ro',
);
has 'error' => (
    isa => 'Str',
    is  => 'ro',
);
has 'data' => (
    isa => 'HashRef',
    is  => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;


=pod

=head1 NAME

Catalyst::Model::REST::Response

=head1 VERSION

version 0.22

=head1 NAME

Catalyst::Model::REST::Response - Response class for REST

=head1 METHODS

=head2 code

Returns the http status code of the request

=head2 response

Returns the raw HTTP::Tiny response. Use this if you need more information than status and content.

=head2 error

Returns the returned reason from HTTP::Tiny where the status is 500 or higher. 

=head2 data

Returns the deserialized data. Returns an empty hashref if the response was unsuccessful

=head1 AUTHOR

Kaare Rasmussen, <kaare at cpan dot com>

=head1 BUGS 

Please report any bugs or feature requests to bug-catalyst-model-rest at rt.cpan.org, or through the
web interface at http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Catalyst-Model-REST.

=head1 COPYRIGHT & LICENSE 

Copyright 2010 Kaare Rasmussen, all rights reserved.

This library is free software; you can redistribute it and/or modify it under the same terms as 
Perl itself, either Perl version 5.8.8 or, at your option, any later version of Perl 5 you may 
have available.

=head1 AUTHOR

Kaare Rasmussen <kaare at cpan dot net>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Kaare Rasmussen.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__