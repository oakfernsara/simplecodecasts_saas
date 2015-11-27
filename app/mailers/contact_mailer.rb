class ContactMailer < ActionMailer::Base
    default to: 'sara@oak-fern.com'
    def contact_email(name, email, body)
        @name = name
        @email = email
        @body = body
        
        mail(from: email, subject: 'ContactFormMessage')
    end
end