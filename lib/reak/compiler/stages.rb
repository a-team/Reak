module Reak
  class Compiler
    class Parser < Rubinius::Compiler::Parser
      def initialize(compiler, last)
        super
        @processor = Reak::Parser
      end

      def create
        # TODO: we totally ignore @transforms
        @parser = @processor.new(@file, @line)
        @parser
      end
    end

    class FileParser < Parser
      stage :reak_file
      next_stage Rubinius::Compiler::Generator

      def input(file, line = 1)
        @file = file
        @line = line
      end

      def parse
        create.parse_file
      end
    end

    class StringParser < Parser
      stage :reak_string
      next_stage Rubinius::Compiler::Generator

      def input(string, name = "(eval)", line = 1)
        @input = string
        @file = name
        @line = line
      end

      def parse
        create.parse_string(@input)
      end
    end
  end
end
