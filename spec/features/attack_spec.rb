
feature "Confirm i've hit my enemy " do
  scenario 'Player 1 can attack Player 2' do
    sign_in_and_play
    click_button "Destroy!"
    expect(page).to have_content("Satan has been destroyed!")
  end
end
