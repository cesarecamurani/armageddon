
feature "Destroy your enemy!" do
  scenario 'Reduces Player 2 score by 20 HPs' do
    sign_in_and_play
    click_button "Destroy!"
    expect(page).not_to have_content("Satan 100HP")
    expect(page).to have_content("Satan new score: 80")
  end
end
