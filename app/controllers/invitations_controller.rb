class InvitationsController < ApplicationController
  def new
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.new(invitation_params)

    begin
      if @invitation.valid? && @invitation.perform
        redirect_to root_path, notice: "Check your email!" and return
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
    redirect_to root_path, notice: 'sorry, there was an error' and return
  end

end
