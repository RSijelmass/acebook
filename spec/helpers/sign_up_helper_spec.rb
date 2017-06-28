
def sign_up
  visit '/'
  click_button('Sign in')
  click_link('Sign up')
  fill_in('user_email', with: 'rita@curd.org')
  fill_in('user_password', with: 'secret')
  click_button('Sign up')
end
