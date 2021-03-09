feature 'game over' do
  context 'when player 1 reaches 0 HP first' do
    before do
      sign_in_and_play
      attack_and_confirm
      allow(Kernel).to receive(:rand).and_return(60)
    end

    scenario 'player 1 loses' do
      click_button("Attack")
      expect(page).to have_content("#{@player_1_name} loses!")
    end
  end
end 
