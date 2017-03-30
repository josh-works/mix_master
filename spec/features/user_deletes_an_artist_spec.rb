require 'rails_helper'

RSpec.feature "user can delete an artist" do
  scenario "user can delete an artist" do
    # As a user
    artists = %w(Bob Adelle Beyonce).map do |artist_name|
      Artist.create(name: artist_name, image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    end

    artist_1 = artists.first
    visit artists_path
    click_on "#{artist_1.name}"
    expect(page).to have_content artist_1.name
    click_on "Delete Artist"

    expect(page).to_not have_content artist_1.name
  end
end
