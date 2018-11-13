
feature 'Testing user names' do
  scenario 'Users can fill in their names in a form' do
    visit('/')
    fill_in('your_name', with: 'Cesare')
    fill_in('enemy_name', with: 'Satan')
    fill_in('enemy_hit_points', with: '100pts')
    click_button("Submit")
    expect(page).to have_content("Cesare")
    expect(page).to have_content("Satan")
    expect(page).to have_content("100pts")
  end
end
