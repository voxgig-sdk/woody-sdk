# Woody SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/test_feature'


module WoodyFeatures
  def self.make_feature(name)
    case name
    when "base"
      WoodyBaseFeature.new
    when "test"
      WoodyTestFeature.new
    else
      WoodyBaseFeature.new
    end
  end
end
