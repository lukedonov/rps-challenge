def single_player_sign_in
    fill_in :player1 , with: "Luke"
    click_button "Submit"
    click_button "Rock"
end

def two_player_sign_in
  click_link "Two Player"
  fill_in :player1 , with: "Luke"
  fill_in :player2 , with: "Tom"
  click_button "Submit"
end

def two_player
  fill_in :player1 , with: "Luke"
  fill_in :player2 , with: "Tom"
  click_button "Submit"
  click_button "Rock"
  click_button "Scissors"
end

def submit_name
  fill_in :player1 , with: "Luke"
  click_button "Submit"
end