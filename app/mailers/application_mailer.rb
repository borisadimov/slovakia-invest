class ApplicationMailer < ActionMailer::Base
  default from: "mail@appname"
  default to:   "mail@appname"
  layout 'mailer'
end
