package Data::ICal::RDF;

use 5.010;
use strict;
use warnings FATAL => 'all';

=head1 NAME

Data::ICal::RDF - Turn iCal files into an RDF graph

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

    use Data::ICal::RDF;

    # Instantiate a processing context with the appropriate handlers:
    my $context = Data::ICal::RDF->new(
        resolve_uid      => sub {
            # returns an RDF node for the UID...
        },
        store_attachment => sub {
            # stores the attachment somewhere and returns an
            # identifier...
        },
        resolve_attachment => sub {
            # resolves a relation between an attachment and its file
            # name...
        },
    );

    # Process a Data::ICal object...
    $context->process($ical);

    # Successive calls to 'process' against different iCal objects
    # will accumulate statements in the context's internal model.

    # Now you can do whatever you like with the model.
    my $result = $context->model;

=head1 METHODS

=head2 new

=cut

sub BUILD {
}

=head2 process

=cut

sub process {
}

=head1 AUTHOR

Dorian Taylor, C<< <dorian at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-data-ical-rdf at
rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Data-ICal-RDF>.  I
will be notified, and then you'll automatically be notified of
progress on your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Data::ICal::RDF


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Data-ICal-RDF>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Data-ICal-RDF>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Data-ICal-RDF>

=item * Search CPAN

L<http://search.cpan.org/dist/Data-ICal-RDF/>

=back

=head1 SEE ALSO

=head1 LICENSE AND COPYRIGHT

Copyright 2015 Dorian Taylor.

Licensed under the Apache License, Version 2.0 (the "License"); you
may not use this file except in compliance with the License.  You may
obtain a copy of the License at
L<http://www.apache.org/licenses/LICENSE-2.0>.

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
implied.  See the License for the specific language governing
permissions and limitations under the License.

=cut

1; # End of Data::ICal::RDF
