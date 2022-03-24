RSpec.feature "Switching turns" do
  context "seeing the current turn" do
    scenario "at the start of the game" do
      sign_in_and_play
      expect(page).to have_content("Tom's turn!")
    end

    scenario "after player 1 attacks" do
      sign_in_and_play
      click_link("Attack")
      expect(page).to have_content("Jerry's turn!")
      expect(page).not_to have_content("Tom's turn!")
    end
  end
end

