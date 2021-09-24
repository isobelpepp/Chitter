feature 'Post a peep' do
  scenario 'User can post a peep and see it' do
    visit('/')
    click_button('Post a Peep')
    fill_in('peep', with: 'My first peep!')
    click_button('Submit')
    expect(current_path).to eq('/')
    expect(page).to have_content('My first peep!')
  end
end
