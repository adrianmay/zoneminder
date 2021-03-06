package ONVIF::Media::Types::MediaCapabilities;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %XAddr_of :ATTR(:get<XAddr>);
my %StreamingCapabilities_of :ATTR(:get<StreamingCapabilities>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        XAddr
        StreamingCapabilities
        Extension

    ) ],
    {
        'XAddr' => \%XAddr_of,
        'StreamingCapabilities' => \%StreamingCapabilities_of,
        'Extension' => \%Extension_of,
    },
    {
        'XAddr' => 'SOAP::WSDL::XSD::Typelib::Builtin::anyURI',
        'StreamingCapabilities' => 'ONVIF::Media::Types::RealTimeStreamingCapabilities',
        'Extension' => 'ONVIF::Media::Types::MediaCapabilitiesExtension',
    },
    {

        'XAddr' => 'XAddr',
        'StreamingCapabilities' => 'StreamingCapabilities',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::MediaCapabilities

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
MediaCapabilities from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * XAddr


=item * StreamingCapabilities


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::MediaCapabilities
   XAddr =>  $some_value, # anyURI
   StreamingCapabilities =>  { # ONVIF::Media::Types::RealTimeStreamingCapabilities
     RTPMulticast =>  $some_value, # boolean
     RTP_TCP =>  $some_value, # boolean
     RTP_RTSP_TCP =>  $some_value, # boolean
     Extension =>  { # ONVIF::Media::Types::RealTimeStreamingCapabilitiesExtension
     },
   },
   Extension =>  { # ONVIF::Media::Types::MediaCapabilitiesExtension
     ProfileCapabilities =>  { # ONVIF::Media::Types::ProfileCapabilities
       MaximumNumberOfProfiles =>  $some_value, # int
     },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

