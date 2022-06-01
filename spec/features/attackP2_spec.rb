feature 'Attack Player 2' do
  scenario 'confirmation of attack' do
    sign_in_and_play
    # visit('/')
    # fill_in :player_1_name, with: 'Charlotte'
    # fill_in :player_2_name, with: 'Mittens'
    # click_button 'Submit'

    # save_and_open_page # will save the web page and open the browser to display it
    
    expect(page).to have_content 'Mittens has been attacked!'
  end
end