require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "should return contact email" do
    mail = ContactMailer.contact_email("matthew@me.com","Matthew Casey", "1234567890", @message = "Hello")
    assert_equal ['info@letsgo.com'], mail.to
    assert_equal ['info@letsgo.com'], mail.from
  end
end
