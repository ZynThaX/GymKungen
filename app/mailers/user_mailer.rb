# coding: utf-8

class UserMailer < ActionMailer::Base
  default from: "noreply@gymkungen.se"
  # site_url = 
  # site_url = "http://gymkungen.herokuapp.com/"
  
  # Is sent when a user is created and the account needs to be activated
  def activation_needed_email(user)
  	@user = user
  	@url  = "http://localhost:3000/users/#{user.activation_token}/activate"
  	mail(:to => user.email,
  		 :subject => "Välkommen till GymKungen!")
  end

  # Is sent when the user account has been activated
  def activation_success_email(user)
    @user = user
    @url  = "http://localhost:3000/login"
    mail(:to => user.email,
         :subject => "Ditt konto är nu aktiverat!")
  end


  # Is sent when the user requestsa reset password
  def reset_password_email(user)
    
  end
end
