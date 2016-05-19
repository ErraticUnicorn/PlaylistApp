class AddSongTitleAndUrlToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :title, :string
    add_column :songs, :url, :string
  end
end
