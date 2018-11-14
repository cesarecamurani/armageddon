def sign_in_and_play
  visit('/')
  fill_in('player_1', with: 'Cesare')
  fill_in('player_2', with: 'Satan')
  click_button("Start the War!")
end

def attack
  sign_in_and_play
  click_button("Destroy")
end
