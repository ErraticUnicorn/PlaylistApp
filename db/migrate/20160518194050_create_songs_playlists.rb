class CreateSongsPlaylists < ActiveRecord::Migration
  def change
    create_table :songs_playlists do |t|
      t.integer :song_id
      t.integer :playlist_id
    end
  end
end
