class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update]

  def show
    @user = User.find(params[:id])
    @sms = @user.sms
  end


  def new
    @user = User.new
  end

 def edit
  @user = User.find(params[:id])
  end

  def login
    @user = User.new
  end



  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to TextPhone"
      redirect_to @user
      else
        flash[:notice] = "Form is invalid"
        flash[:color]= "invalid"
        render 'new'
      end

  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end



  private
  


  def user_params
    params.require(:user).permit(:name, :email, :phone, :phone_type, :email_confirmation, :password)
  end

end
