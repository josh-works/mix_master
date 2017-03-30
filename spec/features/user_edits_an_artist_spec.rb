require 'rails_helper'

RSpec.feature "user can edit an artist" do
   scenario "user can edit an artist" do
     artist = Artist.create(name: "Bob", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
     updated_name = "bob marlypoo"

     visit artist_path(artist)
     expect(page).to have_content artist.name
     click_on "Edit Artist"
     fill_in "artist[name]", with: updated_name
     click_on "Update Artist"

     expect(page).to have_content updated_name
     expect(page).to_not have_content artist.name
  end
end
