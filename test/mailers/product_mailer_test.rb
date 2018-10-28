require 'test_helper'

class ProductMailerTest < ActionMailer::TestCase
  test "product_creation" do
    mail = ProductMailer.product_creation
    assert_equal "Product creation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
