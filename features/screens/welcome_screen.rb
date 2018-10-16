class WelcomeScreen < Appom::Page
  element :avatar_image, :accessibility_id, 'avatarImageView'
  element :welcome_label, :accessibility_id, 'welcomeLabel'
  element :sign_out_button, :accessibility_id, 'signOutButton'
end