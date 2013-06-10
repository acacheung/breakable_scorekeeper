require 'spec_helper'

describe 'for game rounds' do
  it 'can add a new game round' do
    visit root_path
    click_link 'Track a new game'
    fill_in 'What is the name of your game?', :with => 'Mahjong'
    click_button 'Enter'
    click_button 'Add new round'
    page.should have_content('Round 1')
  end

  it 'adds a new game round under the last game round' do
    visit root_path
    click_link 'Track a new game'
    fill_in 'What is the name of your game?', :with => 'Mahjong'
    click_button 'Enter'
    click_button 'Add new round'
    page.should have_content(/Round\s1.*\s*Round\s2/)
  end

  it 'has scores for each player in it'
end