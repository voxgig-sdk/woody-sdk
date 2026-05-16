# Woody SDK utility: make_context
require_relative '../core/context'
module WoodyUtilities
  MakeContext = ->(ctxmap, basectx) {
    WoodyContext.new(ctxmap, basectx)
  }
end
