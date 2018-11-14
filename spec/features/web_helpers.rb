def sign_in_and_play
  visit('/')
  fill_in('your_name', with: 'Cesare')
  fill_in('enemy_name', with: 'Satan')
  click_button("Start the War!")
end

def attack
  sign_in_and_play
  click_button("Destroy")
end
