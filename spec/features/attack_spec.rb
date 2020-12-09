feature 'allows us to attack P2' do
  scenario 'we can see P2 hitpoints go down' do
    sign_in_and_play
    click_link("Attack")
    expect(page).to have_content "#{@player_1_name} attacked #{@player_2_name}"
  end
end
