require 'rails_helper'

RSpec.feature "User creates a playlist" do
  scenario "they see the page for individual playlists" do
    song_1, song_2, song_3 = create_list(:song, 3)
    playlist_name = "My Jams"

    visit playlists_path
    click_on "New playlist"
    fill_in "playlist_name", with: playlist_name
    check("song-#{song_1.id}")
    check("song-#{song_3.id}")
    click_on "Create Playlist"

    expect(page).to have_content playlist_name

    within("li:first") do
      expect(page).to have_link song_1.title, href: song_path(song_1)
    end

    within("li:last") do
      expect(page).to have_link song_3.title, href: song_path(song_3)
    end
  end
end
