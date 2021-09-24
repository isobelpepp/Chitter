feature 'Setting up the website' do
  scenario 'Home page is working' do
    visit('/')
    expect(page).to have_content 'Hello!'
  end
end
