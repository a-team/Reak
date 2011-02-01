module Reak
  module AST
    class Self < Rubinius::AST::Self
      include Reak::AST::Node
    end
  end
end
