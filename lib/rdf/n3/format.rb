module RDF::N3
  ##
  # RDFa format specification.
  #
  # @example Obtaining an Notation3 format class
  #     RDF::Format.for(:n3)            #=> RDF::N3::Format
  #     RDF::Format.for("etc/foaf.ttl")
  #     RDF::Format.for("etc/foaf.n3")
  #     RDF::Format.for(:file_name      => "etc/foaf.ttl")
  #     RDF::Format.for(:file_name      => "etc/foaf.n3")
  #     RDF::Format.for(:file_extension => "ttl")
  #     RDF::Format.for(:file_extension => "n3")
  #     RDF::Format.for(:content_type   => "text/turtle")
  #     RDF::Format.for(:content_type   => "text/n3")
  #
  # @example Obtaining serialization format MIME types
  #     RDF::Format.content_types      #=> {"text/turtle" => [RDF::N3::Format]}
  #     RDF::Format.content_types      #=> {"text/n3")" => [RDF::N3::Format]}
  #
  # @example Obtaining serialization format file extension mappings
  #     RDF::Format.file_extensions    #=> {:ttl => "text/turtle"}
  #     RDF::Format.file_extensions    #=> {:n3 => "text/n3"}
  #
  # @see http://www.w3.org/TR/rdf-testcases/#ntriples
  class Format < RDF::Format
    content_type     'text/turtle',         :extension => :ttl
    content_type     'application/turtle',  :extension => :ttl
    content_type     'application/x-turtle',:extension => :ttl
    content_type     'text/n3',             :extension => :n3
    content_type     'text/rdf+n3',         :extension => :n3
    content_type     'application/rdf+n3',  :extension => :n3
    content_encoding 'utf-8'

    reader { RDF::N3::Reader }
    writer { RDF::N3::Writer }
  end
  
  # Alias for N3 format
  #
  # This allows the following:
  #
  # @example Obtaining an Notation3 format class
  #     RDF::Format.for(:ttl)         #=> RDF::N3::Notation3
  #     RDF::Format.for(:ttl).reader  #=> RDF::N3::Reader
  #     RDF::Format.for(:ttl).writer  #=> RDF::N3::Writer
  class Notation3 < RDF::Format
    reader { RDF::N3::Reader }
    writer { RDF::N3::Writer }
  end
  
  # Alias for N3 format
  #
  # This allows the following:
  #
  # @example Obtaining an TTL format class
  #     RDF::Format.for(:ttl)         # RDF::N3::TTL
  #     RDF::Format.for(:ttl).reader  # RDF::N3::Reader
  #     RDF::Format.for(:ttl).writer  # RDF::N3::Writer
  class TTL < RDF::Format
    reader { RDF::N3::Reader }
    writer { RDF::N3::Writer }
  end
  
  # Aliases for N3 format
  #
  # This allows the following:
  #
  # @example Obtaining an Turtle format class
  #     RDF::Format.for(:turtle)         # RDF::N3::Turtle
  #     RDF::Format.for(:turtle).reader  # RDF::N3::Reader
  #     RDF::Format.for(:turtle).writer  # RDF::N3::Writer
  class Turtle < RDF::Format
    reader { RDF::N3::Reader }
    writer { RDF::N3::Writer }
  end
end
