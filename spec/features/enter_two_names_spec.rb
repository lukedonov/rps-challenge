feature "entering your name" do 
  scenario "enter and return your name" do
    visit ("/")
    two_player_sign_in
    expect(page).to have_content "Luke vs Tom"
  end
end