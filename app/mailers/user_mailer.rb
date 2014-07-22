class UserMailer < ActionMailer::Base
  default from: "eric@consultmango.com"

  def checkout_email(user, attachment)
    @user = user 
    attachments['invoice.pdf'] = {
      mime_type: 'application/pdf',
      content: attachment
    }
    mail(to: @user.email, subject: 'Your order is complete!')
  end

end
