class Playlist < ActiveRecord::Base
  has_and_belongs_to_many :users, join_table: :users_playlists
  has_and_belongs_to_many :songs, join_table: :songs_playlists
end
