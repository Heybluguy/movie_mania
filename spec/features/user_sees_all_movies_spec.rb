require 'rails_helper'

describe 'user sees all movies' do
  describe 'when im on the index page' do
    scenario 'sees all the movies' do
      director = Director.create(name: "fred")
      fred = Movie.create!(title: "Drop Dead Fred", description: "An unhappy housewife gets a lift from the return of her imaginary childhood friend", director: director)
      empire = Movie.create!(title: "Empire Records", description: "Independent Delaware store that employs a tight-knit group of music-savvy youths.", director: director)

      visit director_movies_path(director)

      expect(page).to have_content("All Movies")
      expect(page).to have_content(fred.title)
      expect(page).to have_content(fred.description)
      expect(page).to have_content(empire.title)
      expect(page).to have_content(empire.description)
    end
  end
end