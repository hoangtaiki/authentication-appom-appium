class LoginScreen < Appom::Page
  element :email, :accessibility_id, 'emailTextField'
  element :password, :accessibility_id, 'passwordTextField'
  element :sign_in_button, :accessibility_id, 'signInButton'
  element :alert_view, :accessibility_id, 'alertViewController'
end