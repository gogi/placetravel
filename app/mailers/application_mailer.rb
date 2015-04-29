class ApplicationMailer < ActionMailer::Base
  default from: ENV['invite_email']
  layout 'mailer'
end
