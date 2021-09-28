require_relative '../helpers/web_helpers'

feature 'Sign out' do
  scenario 'user can sign out' do
    sign_up
    click_button('Sign Out')
    expect(page).to have_content('You have successfully signed out.')
  end
end
