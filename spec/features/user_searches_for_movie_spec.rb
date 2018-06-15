require 'rails_helper'

feature 'user searches for movie' do
  scenario 'user searches for movies with "John" in title' do
    visit root_path

    fill_in 'movie_title', with: 'John'
    click_button 'Search'

    expect(page).to have_content('John')
  end
end
