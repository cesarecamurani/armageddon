
feature 'Testing user names' do
  scenario 'Users can fill in their names in a form' do
    sign_in_and_play
    expect(page).to have_content("Cesare")
    expect(page).to have_content("Satan")
  end
end
