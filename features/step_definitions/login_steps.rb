Given('I fill in email with {string}') do |email|
  @login_screen = LoginScreen.new
  @login_screen.email.send_keys email
end

And('I fill in password with {string}') do |password|
  @login_screen.password.send_keys password, :enter
end

And('I press sign in button') do
  @login_screen.sign_in_button.click
end

Then('Alert will show error {string}') do |expected|
  sleep 2
  expect(@login_screen.alert_view.text).to eq expected.to_s
end

Then('I see welcome label appear with title {string}') do |expected|
  sleep 2
  @welcome_screen = WelcomeScreen.new
  expect(@welcome_screen.welcome_label.value).to eq expected.to_s
end