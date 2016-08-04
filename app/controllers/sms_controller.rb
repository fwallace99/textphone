class SmsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

def create
    @sm = Sm.create(sm_params)

  end

  

def create
    @sm = current_user.sms.build(sm_params)
    #@user = current_user
    if @sm.save
      text_message = @sm[:content]
      flash[:success] = "Text message created: #{text_message}"
      #lets send the text email
      
      SmsMailer.sms_email(@user).deliver_later
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end






  private
  def sm_params
    params.require(:sm).permit(:content, :id)

  end

end
