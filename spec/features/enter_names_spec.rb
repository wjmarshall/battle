RSpec.feature "Enter names" do
  scenario "Players can enter and see their names" do
    sign_in_and_play
    expect(page).to have_content("Ian vs. Fran")
  end
end
