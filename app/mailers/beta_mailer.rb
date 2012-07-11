class BetaMailer < ActionMailer::Base
  def beta_signup(user)
    mail(:to => user.email, :subject => "FORKIT: Thanks for signing up for the beta!", :from => "yangsunwoo@gmail.com")
  end
end
