class InvitationsController < ApplicationController
  def new
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.new(invitation_params)

    begin
      if @invitation.valid? && @invitation.perform
        flash[:success] = "Check your email!"
        redirect_to root_path and return
      else
        unprocessable
      end
    rescue
      unprocessable
    end
  end


  private
  def invitation_params
    params.require(:invitation).permit(:email)
  end

  def unprocessable
    redirect_to root_path, alert: 'sorry, there was an error' and return
  end

end
