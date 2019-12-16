class ApplicationMailer < ActionMailer::Base
  default to: "info@letsgo.com", from: "info@letsgo.com"
  layout 'mailer'
end
