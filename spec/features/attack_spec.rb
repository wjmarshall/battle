RSpec.feature "Attack" do
  scenario "Player 1 attacks player 2" do
    sign_in_and_play
    click_link("Attack")
    expect(page).to have_content("Tom attacked Jerry!")
  end
end