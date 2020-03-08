feature 'computer' do
  scenario 'creates random computer input' do
      visit ("/")
      fill_in :player1 , with: "Luke"
      click_button "Submit"
      click_button "Rock"
      expect(page).to have_content 'Computer used'
  end
end