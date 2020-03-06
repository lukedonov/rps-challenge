feature "pick move" do 
  scenario "pick rock paper or scissors" do 
    visit ("/")
    fill_in :player1 , with: "Luke"
    click_button "Submit"
    click_button "Rock"
    expect(page).to have_content 'Luke used Rock'
  end

  scenario "pick rock paper or scissors" do 
    visit ("/")
    fill_in :player1 , with: "Luke"
    click_button "Submit"
    click_button "Paper"
    expect(page).to have_content 'Luke used Paper'
  end
end