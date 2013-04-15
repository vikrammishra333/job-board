ActionMailer::Base.smtp_settings = {

  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => '192.168.11.235:3000',
  :user_name            => "friends989@gmail.com",
  :password             => "7735072261",
  :authentication       => "plain",
  :enable_starttls_auto => true

}