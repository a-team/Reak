module Reak
  module AST
    module Node
      module ClassMethods
      end

      module InstanceMethods
        def unfold?
          true
        end

        def initialize(line = 1)
          super
        end
      end

      def append_features(base)
        base.send(:include, InstanceMethods)
        base.extend ClassMethods
        super
      end

      extend ClassMethods
      include InstanceMethods
    end
  end
end
