feature 'view hit points for both players' do
  scenario 'see player 2 hit points at start' do
    sign_in_and_play
    expect(page).to have_content("#{player_2_name}: 60HP")
  end

  scenario 'see player 1 hit points at start' do
    sign_in_and_play
    expect(page).to have_content("#{player_1_name}: 60HP")
  end
end
