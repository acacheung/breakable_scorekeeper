require 'spec_helper'

describe 'adding game players' do

  it 'asks for player names when tracking a new game' do
    visit root_path
    click_link 'Track a new game'
    fill_in 'What is the name of your game?', :with => 'Mahjong'
    fill_in 'How many players?', :with => '4'
    click_button 'Enter'
    page.should have_content(/Player.*{4}/)
  end

  it 'can see the game players that belong to each game on game index'
  #   visit root_path
  #   click_link 'Track a new game'
  #   fill_in 'Name', :with => 'Mahjong1'
  #   fill_in 'Player 1', :with => 'Amanda'
  #   fill_in 'Player 2', :with => 'Sam'
  #   fill_in 'Player 3', :with => 'Matt'
  #   click_button 'Done'
  #   page.should have_content('Amanda')
  # end

  it 'can see the game players on each game show page'
  #   visit root_path
  #   click_link 'Track a new game'
  #   fill_in 'Name', :with => 'Mahjong1'
  #   fill_in 'Player 1', :with => 'Amanda'
  #   fill_in 'Player 2', :with => 'Sam'
  #   fill_in 'Player 3', :with => 'Matt'
  #   click_button 'Done'
  #   click_button 'Mahjong1'
  #   page.should have_content('Amanda')
  # end
end