
feature "entering your name" do 
  scenario "enter and return your name" do
    visit ("/")
    submit_name
    expect(page).to have_content "Hello Luke"
  end
end
