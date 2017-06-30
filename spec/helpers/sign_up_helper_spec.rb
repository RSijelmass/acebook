
def sign_up(email_address = 'default@email.com', username = 'Default')
  visit '/'
  click_button('Sign in')
  click_link('Sign up')
  fill_in('user_email', with: email_address)
  fill_in('user_username', with: username)
  fill_in('user_password', with: 'secret')
  click_button('Sign up')
end
