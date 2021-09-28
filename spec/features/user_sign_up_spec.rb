require_relative '../helpers/web_helpers'

feature 'User sign up' do
  scenario 'a user can sign up to chitter' do
    sign_up
    expect(page).to have_content('Welcome My username!')
  end
end
