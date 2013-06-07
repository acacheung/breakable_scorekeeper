require 'spec_helper'

describe 'add games' do
  it 'creates a game when "add game" button is clicked' do
    visit root_path
    click_link 'Track a new game'
    fill_in 'Name', :with => 'Mahjong'
    click_button 'Done'
    page.should have_content 'Mahjong'
  end
end