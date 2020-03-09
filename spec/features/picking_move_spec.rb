feature "pick move" do 
  scenario "pick rock paper or scissors" do 
    visit ("/")
    single_player_sign_in
    expect(page).to have_content 'Luke used Rock'
  end

  scenario "pick rock paper or scissors" do 
    visit ("/index1")
    two_player
    expect(page).to have_content 'Luke used Rock'
  end
end

