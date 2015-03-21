class InvitationsController < ApplicationController
  def new
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.new(invitation_params)

    begin
      if @invitation.valid? && @invitation.perform
        head :ok
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
    head :unprocessable_entity
  end

end
