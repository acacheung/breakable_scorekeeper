require 'spec_helper'

describe 'for game rounds' do
  it 'can add a new game round' do
    visit root_path
    click_link 'Track a new game'
    fill_in 'Name', :with => 'Mahjong'
    click_button 'Done'
    click_link 'Add a new round'
    page.should have_content('Round 1')
  end

  it 'adds a new game round under the last game round'
end