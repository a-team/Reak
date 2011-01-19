module Reak
  module Syntax
    autoload :Node,           'reak/syntax/node'
    autoload :Body,           'reak/syntax/body'
    autoload :Closure,        'reak/syntax/closure'
    autoload :Literal,        'reak/syntax/literal'
    autoload :NilKind,        'reak/syntax/literal'
    autoload :TrueKind,       'reak/syntax/literal'
    autoload :FalseKind,      'reak/syntax/literal'
    autoload :Integer,        'reak/syntax/literal'
    autoload :Symbol,         'reak/syntax/literal'
    autoload :String,         'reak/syntax/literal'
    autoload :Character,      'reak/syntax/literal'
    autoload :Array,          'reak/syntax/literal'
    autoload :ScaledDecimal,  'reak/syntax/literal'
    autoload :Expression,     'reak/syntax/expression'
    autoload :ReturnValue,    'reak/syntax/return_value'
    autoload :MessageKey,     'reak/syntax/message'
    autoload :Message,        'reak/syntax/message'
    autoload :Call,           'reak/syntax/call'
    autoload :SuperCall,      'reak/syntax/call'
    autoload :Cascade,        'reak/syntax/call'
    autoload :Variable,       'reak/syntax/variable'
    autoload :Assign,         'reak/syntax/variable'
    autoload :Self,           'reak/syntax/variable'
    autoload :Super,          'reak/syntax/variable'
  end
end
