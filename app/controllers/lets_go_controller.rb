class LetsGoController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def request_contact
    name = params[:name]
    email = params[:email]
    telephone = params[:telephone]
    message = params[:message]

    if email.blank?
      flash[:alert] = I18n.('You must give an email address')
    else
      # Send an email
      flash[:notice] = I18n.('Contact message sent')
    end

    redirect_to root_path
  end
end
