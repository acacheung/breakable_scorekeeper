require 'spec_helper'

describe 'adding game players' do

  it 'asks for player names when tracking a new game' do
    visit root_path
    click_link 'Track a new game'
    page.should have_content(/Player.1/)
  end

  it 'can see the game players that belong to each game on game index'
  #   visit root_path
  #   click_link 'Track a new game'
  #   fill_in 'What is the name of your game?', :with => 'Mahjong1'
  #   fill_in 'Player 1', :with => 'Amanda'
  #   fill_in 'Player 2', :with => 'Sam'
  #   fill_in 'Player 3', :with => 'Matt'
  #   click_button 'Enter'
  #   page.should have_content('Amanda')
  # end

  it 'can see the game players on each game show page' do
    visit root_path
    click_link 'Track a new game'
    fill_in 'What is the name of your game?', :with => 'Mahjong1'
    fill_in 'Player 1', :with => 'Amanda'
    fill_in 'Player 2', :with => 'Sam'
    fill_in 'Player 3', :with => 'Matt'
    click_button 'Enter'
    page.should have_content('Amanda')
  end
end