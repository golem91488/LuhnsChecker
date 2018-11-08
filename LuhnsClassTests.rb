require_relative "LuhnsClass"
require "test/unit"
 
class TestValidate < Test::Unit::TestCase
   def test_validate
    assert_true(LuhnsValidator.new.luhnsValidate(79927398713))
    assert_false(LuhnsValidator.new.luhnsValidate(79927398710))
    assert_true(LuhnsValidator.new.luhnsValidate("79927398713"))
    assert_false(LuhnsValidator.new.luhnsValidate("79927398710"))
  end
end