feature 'User sign up' do
  scenario 'a user can sign up to chitter' do
    visit('/')
    click_button('Sign Up')
    fill_in('username', with: 'My username')
    fill_in('email', with: 'example@example.com')
    fill_in('password', with: 'Password1!')
    click_button('Submit')
    expect(page).to have_content('Welcome My username!')
  end
end
