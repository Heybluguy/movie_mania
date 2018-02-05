require 'rails_helper'

describe 'as a user' do
  describe 'when i am on the new page' do
    scenario 'then i see a new form to create a movie' do

      visit "/movies/new"

      fill_in "movie[title]",	with: "Drop Dead Fred"

      expect(page).to have_content("Create New Movie")
    end
  end
end