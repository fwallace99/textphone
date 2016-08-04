class StaticPagesController < ApplicationController
  def home
    @sm = current_user.sms.build if logged_in?
  end

  def login
  end
end
