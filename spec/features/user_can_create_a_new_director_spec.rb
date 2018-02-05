require 'rails_helper'

describe 'as a user' do
  describe 'when i visit' do
    scenario 'they can create a director' do
      visit "/directors/new"

      fill_in "director[name]", with: "Copola"
      click_on "Create Director"

     expect(page).to have_content("Copola")
    end
  end
end

