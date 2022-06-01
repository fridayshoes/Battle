feature 'Attack Player 2' do
  scenario 'confirmation of attack' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Charlotte attacked Mittens'
  end
end