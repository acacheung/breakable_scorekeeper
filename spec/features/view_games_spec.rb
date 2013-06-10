require 'spec_helper'

describe 'add games' do
  it 'creates a game when "add game" button is clicked' do
    visit root_path
    click_link 'Track a new game'
    fill_in 'What is the name of your game?', :with => 'Mahjong'
    click_button 'Enter'
    page.should have_content 'Mahjong'
  end

  it 'more recent games are at the top' do
    visit root_path
    click_link 'Track a new game'
    fill_in 'What is the name of your game?', :with => 'Mahjong1'
    click_button 'Enter'
    visit root_path
    click_link 'Track a new game'
    fill_in 'What is the name of your game?', :with => 'Mahjong2'
    click_button 'Enter'
    visit root_path
    page.should have_content(/Mahjong2.*Mahjong1/)
  end
end