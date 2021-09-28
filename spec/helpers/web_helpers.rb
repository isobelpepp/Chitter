def post_peep
  visit('/')
  click_button('Post a Peep')
  fill_in('peep', with: 'My first peep!')
  click_button('Submit')
end

def sign_up
  visit('/')
  click_button('Sign Up')
  fill_in('username', with: 'My username')
  fill_in('email', with: 'example@example.com')
  fill_in('password', with: 'Password1!')
  click_button('Submit')
end
