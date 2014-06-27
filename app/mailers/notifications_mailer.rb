class NotificationsMailer < ActionMailer::Base
  default from: "epv9@case.edu"
  default to: "eric@consultmango.com"

  def new_message(message)
  	@message = message
  	mail(:subject => "[YourWebsite.tld #{message.subject}")
  end
end
