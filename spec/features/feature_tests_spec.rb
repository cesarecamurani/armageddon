
# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'Testing user names' do
  scenario 'Users can fill in their names in a form' do
    visit('/')
    fill_in('your_name', with: 'Cesare')
    fill_in('enemy_name', with: 'Satan')
    click_button("Submit")
    expect(page).to have_content("Cesare", "Satan")
  end
end
