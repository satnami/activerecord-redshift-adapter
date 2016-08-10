module ActiveRecord
  module ConnectionAdapters
    module Redshift
      module OID # :nodoc:
        class Json < Type::Internal::AbstractJson
        end
      end
    end
  end
end
