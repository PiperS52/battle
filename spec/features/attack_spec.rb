feature 'allows us to attack P2' do
  scenario 'we can see P2 hitpoints go down' do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_text "#{@player_1_name} attacked #{@player_2_name}"
  end

  scenario 'player 1 be attacked by player 2' do
    sign_in_and_play
    click_button("Attack")
    click_button("OK")
    click_button("Attack")
    expect(page).to have_content("#{@player_2_name} attacked #{@player_1_name}")
  end
end
