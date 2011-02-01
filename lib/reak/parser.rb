require 'parslet'
require 'reak/parser/ansi_smalltalk'
require 'reak/parser/smalltalk80'
require 'reak/parser/gnu_smalltalk'
require 'reak/parser/reak_smalltalk'
require 'reak/parser/transformer'

module Reak
  ##
  # Collection of PEG grammars for different Smalltalk dialects.
  # Included dialects and their inheritance:
  #
  #   AnsiSmalltalk
  #    \- Smalltalk80
  #       |- GnuSmalltalk
  #       |  \- ReakSmalltalk (default)
  #       |- Squeak
  #       |  \- Pharo
  #       \- SmalltalkInterchangeFormat
  #
  # The implementations are not 100% correct. For instance, the AnsiSmalltalk parser makes decissions that are clearly
  # marked implementation specific in the specs. However, I tried to move everything that is not part of AnsiSmalltalk
  # into Smalltalk80.
  #
  # See also:
  # * http://wiki.squeak.org/squeak/uploads/172/standard_v1_9-indexed.pdf
  # * http://chronos-st.blogspot.com/2007/12/smalltalk-in-one-page.html
  # * http://www.fit.vutbr.cz/study/courses/OMP/public/software/sqcdrom2/Squeak_Swiki/409.html
  module Parser
    def self.new(file, line = 1)
      ReakSmalltalk.new
    end
  end
end
