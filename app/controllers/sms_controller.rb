class SmsController < ApplicationController

def create
    @sm = Sm.create(sm_params)

  end

  private
  def sm_params
    params.require(:sm).permit(:content, :id) if params[:sm]

  end

end
