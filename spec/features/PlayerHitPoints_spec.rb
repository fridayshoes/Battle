feature "Player 1" do
  scenario "See Player 2 hit points" do
    sign_in_and_play
    # visit('/')
    # fill_in :player_1_name, with: 'Charlotte'
    # fill_in :player_2_name, with: 'Mittens'
    # click_button 'Submit'

    # save_and_open_page # will save the web page and open the browser to display it
    
    expect(page).to have_content 'Mittens: 60HP'
  end
end