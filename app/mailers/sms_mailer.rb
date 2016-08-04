class SmsMailer < ApplicationMailer
    default from: "flwallace99@gmail.com"
    layout 'sms_email'

  def sms_email(user)
    @user = user
    @phone_type = user.phone_type
    @phone_number = user.phone
    @new_email = ""
    #code to remangle email address based on phone type
      case @phone_type
        when "AllTell"
          @new_email = "#{@phone_number}" +  "@" +  "sms.alltelwireless.com" 
        when "ATT"
          @new_email = "#{@phone_number}" + "@txt.att.net"
        when "Verizon"
          @new_email = "#{@phone_number}" + "@vtext.com"
  
        when "Sprint"
          @new_email = "#{@phone_number}" + "@messaging.sprintpcs.com"
        when "NexTel"
          @new_email = "#{@phone_number}" + "@page.nextel.com"
        when "TMobile"
          @new_email = "1" + "#{@phone_number}" + "@tmomail.net"
        when "USCellular"
          @new_email = "#{@phone_number}" +   "@email.uscc.net"
        when "VirginMobile"
          @new_email = "#{@phone_number}" + "@vmobl.com"
        when "Tracfone"
          @new_email = "#{@phone_number}" + "@mmst5.tracfone.com"
        when "MetoPCS"
          @new_email = "#{@phone_number}" + "@mymetropcs.com"
        when "Cricket"
          @new_email = "#{@phone_number}" + "@sms.mycricket.com"
        when "Qwest
          @new_email = "#{@phone_number}" + "@qwestmp.com"
       when "Ptel
          @new_email = "#{@phone_number}" + "@ptel.com"
       when "Suncom"        
          @new_email = "#{@phone_number}" + "@tms.suncom.com"
        end







    @sms = Sm.find_by_user_id(@user[:id])
    
    mail(to: @new_email, subject: '')
    
  end


end
