require_relative 'helper'
require 'test/unit'
require 'atom_ruby/back_off'

class BackOffTest < Test::Unit::TestCase
  def testBackOff
      assert_in_delta(backoff=BackOff.new(0.5, 30).retry_time, 0.5, 1)
  end

  def testMaxBackOff
    backoff=BackOff.new(5, 30)
    100.times{backoff.retry_time}
    assert_in_delta(backoff.retry_time, 30, 15)
  end
end