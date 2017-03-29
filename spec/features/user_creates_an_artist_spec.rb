require 'rails_helper'

RSpec.feature "User creates an artist" do
  context "user can fill in artist info" do

    scenario "they enter data to create a new artist" do
      artist_name = "Bob Marley"
      artist_image_path = "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"

      visit '/artists'
      click_on "New Artist"
      fill_in "artist_name", with: artist_name
      fill_in "artist_image_path", with: artist_image_path
      click_on "Create Artist"

      expect(page).to have_content artist_name
      expect(page).to have_css("img[src=\"#{artist_image_path}\"]")
    end
  end

  context "the submitted data is invalid" do
    scenario "user creates an artist without an artist name" do
      artist_name = ""
      artist_image_path = "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"

      visit '/artists'
      click_on "New Artist"
      fill_in "artist_name", with: artist_name
      fill_in "artist_image_path", with: artist_image_path
      click_on "Create Artist"

      expect(page).to have_content("Name cannot be blank")
    end
  end
end
