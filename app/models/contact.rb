class Contact < MailForm::Base
	attribute :name, :validate => true
	attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :message
	attribute :nickname, :captcha => true

	# Declare the e-mail headers.  It accepts anything the mail method in action mailer accepts
	
	def headers
	{ 
		:subject => "Consult Mango Contact Us Question",
		:to => ENV['GMAIL_USERNAME'],
		:from => %("#{name}"<#{email})
	}
	end
end