require 'ad-framework/schema'

module AD
  module Framework
    module Patterns

      module HasSchema
        class << self

          def included(klass)
            klass.class_eval do
              extend AD::Framework::Patterns::HasSchema::ClassMethods
              include AD::Framework::Patterns::HasSchema::InstanceMethods
            end
          end

        end

        module InstanceMethods

          def schema
            unless @schema
              @schema = self.class.schema.dup
              @schema.build_for(self)
            end
            @schema
          end

          def attributes
            self.schema.attributes.inject({}) do |attrs, attribute|
              attrs.merge({ attribute.to_sym => self.send(attribute.to_sym) })
            end
          end
          def attributes=(new_attributes)
            new_attributes.each do |name, value|
              if self.schema.attributes.include?(name)
                self.send("#{name}=", value)
              end
            end
          end

        end

        module ClassMethods

          def schema
            @schema ||= AD::Framework::Schema.new(self)
          end

          def ldap_name(name = nil)
            (self.schema.ldap_name = name) if name
            self.schema.ldap_name
          end

          def rdn(name = nil)
            (self.schema.rdn = name) if name
            self.schema.rdn
          end

          def attributes(*attribute_names)
            self.schema.add_rw_attribute_needs(attribute_names)
          end

          def write_attributes(*attribute_names)
            self.schema.add_w_attribute_needs(attribute_names)
          end

          def read_attributes(*attribute_names)
            self.schema.add_r_attribute_needs(attribute_names)
          end

        end

      end

    end
  end
end
