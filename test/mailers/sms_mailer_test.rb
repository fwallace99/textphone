require 'test_helper'

class SmsMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end
  def sms_email
    UserMailer.sms_email(User.first)
  end
end
