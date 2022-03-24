RSpec.feature "Enter names" do
  scenario "Players can enter and see their names" do
    visit("/")
    fill_in(:player_1, with: "Ian")
    fill_in(:player_2, with: "Fran")
    click_button("Submit")
    save_and_open_page
    expect(page).to have_content("Ian vs. Fran")
  end
end
