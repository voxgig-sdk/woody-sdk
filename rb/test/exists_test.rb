# Woody SDK exists test

require "minitest/autorun"
require_relative "../Woody_sdk"

class ExistsTest < Minitest::Test
  def test_create_test_sdk
    testsdk = WoodySDK.test(nil, nil)
    assert !testsdk.nil?
  end
end
