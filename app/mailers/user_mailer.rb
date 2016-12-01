class UserMailer < ApplicationMailer
  default from: "do.not,reply@abc.xyz"
  
  def contact_email (contact)
    @contact = contact
    puts Rails.application.secrets.email_provider_password + "aaaaaaa"
    mail(to: Rails.application.secrets.owner_email, from: @contact.email, :subject => "hello dude") 
  end 
end
