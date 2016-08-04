# Preview all emails at http://localhost:3000/rails/mailers/sms_mailer
class SmsMailerPreview < ActionMailer::Preview
    def sms_email
    SmsMailer.sms_email(User.first)
  end
end
