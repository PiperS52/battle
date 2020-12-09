# feature 'Testing infrastructure' do
#   scenario 'can run app and check page content' do
#     visit('/')
#     expect(page).to have_content "Testing infrastructure working!"
#   end
# end

feature 'Entering names in form' do
  scenario 'two players can enter their names and see them' do
    visit('/')
    fill_in :player_1_name, with: "Cathal"
    fill_in :player_2_name, with: "Simon"
    click_button("Submit")
    expect(page).to have_content "Cathal vs. Simon"
  end


end

feature 'displays Player 2s hitpoints' do
  scenario 'user can see P2 hitpoints' do
    visit('/')
    fill_in :player_1_name, with: "Cathal"
    fill_in :player_2_name, with: "Simon"
    click_button("Submit")
    expect(page).to have_text "#{@player_2_name}: 60HP"
  end
end
