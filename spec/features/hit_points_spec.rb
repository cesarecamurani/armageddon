
feature 'Testing Hit Points' do
  scenario 'User can see in his/her opponent points' do
    sign_in_and_play
    expect(page).to have_content("Satan: 100pts")
  end
end
