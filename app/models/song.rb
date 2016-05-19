class Song < ActiveRecord::Base
  has_and_belongs_to_many :playlists, join_table: :songs_playlists
  validates :title, presence: true
  validates :url, presence: true
  validates_format_of :url, :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix, multiline: true

end
