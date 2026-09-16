# Woody SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/ratelimit_feature'
require_relative 'feature/retry_feature'
require_relative 'feature/test_feature'
require_relative 'feature/timeout_feature'


module WoodyFeatures
  def self.make_feature(name)
    case name
    when "base"
      WoodyBaseFeature.new
    when "ratelimit"
      WoodyRatelimitFeature.new
    when "retry"
      WoodyRetryFeature.new
    when "test"
      WoodyTestFeature.new
    when "timeout"
      WoodyTimeoutFeature.new
    else
      WoodyBaseFeature.new
    end
  end
end
