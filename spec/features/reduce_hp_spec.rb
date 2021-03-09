feature 'allows us to reduce hit points of player by 10' do
  scenario 'we can see player 2 hp reduced by 10 following an attack by player 1' do
    sign_in_and_play
    click_button("Attack")
    expect(page).not_to have_content "#{@player_2_name}: 60HP"
    expect(page).to have_content "#{@player_2_name}: 50HP"
  end

  scenario 'we can see player 1 hp reduced by 10 following an attack by player 2' do
    sign_in_and_play
    click_button("Attack")
    click_button("OK")
    click_button("Attack")
    click_button("OK")
    expect(page).not_to have_content "#{@player_1_name}: 60HP"
    expect(page).to have_content "#{@player_1_name}: 50HP"
  end
end
