def sign_in_and_play
  visit('/')
  fill_in('your_name', with: 'Cesare')
  fill_in('enemy_name', with: 'Satan')
  fill_in('enemy_hit_points', with: '100pts')
  click_button("Submit")
end
