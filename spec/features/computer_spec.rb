feature 'computer' do
  scenario 'creates random computer input' do
      visit ("/")
      single_player_sign_in
      expect(page).to have_content 'Computer used'
  end
end