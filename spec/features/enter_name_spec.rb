
feature "entering your name" do 
  scenario "enter and return your name" do
    visit ("/")
    fill_in :player1 , with: "Luke"
    click_button "Submit"
    expect(page).to have_content "Hello Luke"
  end

  scenario "enter and return your name" do
    visit ("/")
    fill_in :player1 , with: "Tom"
    click_button "Submit"
    expect(page).to have_content "Hello Tom"
  end
end
