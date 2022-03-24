RSpec.feature "Display hit points" do
  scenario "see player 2's hit points" do
    visit "/"
    fill_in(:player_1, with: "Tom")
    fill_in(:player_2, with: "Jerry")
    click_button("Submit")
    save_and_open_page
    expect(page).to have_content("Jerry: 60 HP")
  end
end

