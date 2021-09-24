def post_peep
  visit('/')
  click_button('Post a Peep')
  fill_in('peep', with: 'My first peep!')
  click_button('Submit')
end