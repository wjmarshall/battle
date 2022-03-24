RSpec.feature "Display hit points" do
  scenario "see player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content("Jerry: 60 HP")
  end
end

