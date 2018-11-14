
feature 'Testing Hit Points' do
  scenario 'User can fill in his/her opponent points' do
    sign_in_and_play
    expect(page).to have_content("100pts")
  end
end
