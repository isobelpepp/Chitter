require_relative '../helpers/web_helpers'

feature 'Timestamp' do
  scenario 'Users can see timestamps of tweets' do
    time = Timecop.freeze
    post_peep
    expect(page).to have_content(time.strftime('%H:%M, %d/%m/%Y'))
  end
end