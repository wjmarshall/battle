RSpec.feature "Attack" do
  scenario "Player 1 attacks player 2" do
    sign_in_and_play
    click_link("Attack")
    expect(page).to have_content("Tom attacked Jerry!")
  end

  scenario "Player 1's attack reduces Player 2 HP by 10" do
    sign_in_and_play
    click_link("Attack")
    expect(page).to have_content("Jerry: 50 HP")
    expect(page).not_to have_content("Jerry: 60 HP")
  end
end
