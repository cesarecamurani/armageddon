
feature "Destroy your enemy!" do

  before do
    sign_in_and_play
    click_button "Destroy!"
  end

  scenario 'Reduces other player\'s score by 20 HPs' do
    # expect(page).to have_content("Player 1 Cesare turn")
    expect(page).not_to have_content("Satan 100 HP")
    expect(page).to have_content("Satan 80 HP")
  end

  scenario 'Reduces other player\'s score by 20 HPs' do
    expect(page).not_to have_content("Cesare 80 HP")
    expect(page).to have_content("Cesare 100 HP")
    click_button "Destroy!"
    expect(page).not_to have_content("Satan 100 HP")
    expect(page).to have_content("Satan 80 HP")
  end

end
