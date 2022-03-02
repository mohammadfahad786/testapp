class UserMailer < ApplicationMailer
    def welcome_email
        @user = params[:user]
        attachments['Image.jpg']=File.read('app/assets/images/pic.jpg')
        @url  = 'http://example.com/login'
        mail(
            to: 'fahad4032830@gmail.com', 
            cc: 'bcsf18a036@pucit.edu.pk', 
            subject: 'Welcome to My Awesome Site')
    end
end
