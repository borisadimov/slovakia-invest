class ApplicationMailer < ActionMailer::Base
  default from: "mail@slovakia"
  default to:   "mail@slovakia"
  layout 'mailer'
end
