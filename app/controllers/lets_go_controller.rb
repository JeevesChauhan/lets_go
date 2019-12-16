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
      flash[:alert] = 'You must give an email address'
    else
      # Send an email
      ContactMailer.contact_email(email,name,telephone,message).deliver_now
      flash[:notice] = 'Contact message sent'
    end

    redirect_to root_path
  end
end
