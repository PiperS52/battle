# feature 'Testing infrastructure' do
#   scenario 'can run app and check page content' do
#     visit('/')
#     expect(page).to have_content "Testing infrastructure working!"
#   end
# end

feature 'Entering names in form' do
  scenario 'two players can enter their names and see them' do
    sign_in_and_play
    expect(page).to have_content "#{@player_1_name} vs. #{@player_2_name}"
  end


end

feature 'displays Player 2s hitpoints' do
  scenario 'user can see P2 hitpoints' do
    sign_in_and_play
    expect(page).to have_text "#{@player_2_name}: 60HP"
  end
end
