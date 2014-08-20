class UserMailer < ActionMailer::Base
    default from: "1701 <welcome@harrys.com>"

    def signup_email(user)
        @user = user
        @twitter_message = "Luxury is evolving - didn't want to leave you behind! Check out @workshop1701 here, and sign up to earn free products!"

        mail(:to => user.email, :subject => "Thanks for signing up!")
    end
end
