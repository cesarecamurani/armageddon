
feature 'Testing Hit Points' do
  scenario 'User can see in his/her opponent points' do
    sign_in_and_play
    expect(page).to have_content("Cesare turn")
    expect(page).to have_content("Cesare 100 HP")
    expect(page).to have_content("Satan 100 HP")
  end
end
