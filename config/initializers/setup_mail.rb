ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "localhost:3000",
  :user_name            => "yangsunwoo@gmail.com",
  :password             => "Daigaku2",
  :authentication       => "plain",
  :enable_starttls_auto => true
}