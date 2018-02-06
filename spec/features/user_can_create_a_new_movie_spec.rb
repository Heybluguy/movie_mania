require 'rails_helper'

describe 'as a user i can create new movie' do
  describe 'when i am on the new page' do
    scenario 'then i see a new form to create a movie' do
      director = Director.create!(name: "Ilana")

      visit new_director_movie_path(director)

      fill_in "movie[title]",	with: "Finding Nemo"
      fill_in "movie[description]",	with: "Fishys"

      click_on "Create Movie"

      expect(page).to have_content("Finding Nemo")
    end
  end
end