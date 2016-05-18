class CreateUsersPlaylists < ActiveRecord::Migration
  def change
    create_table :users_playlists do |t|
      t.integer :user_id
      t.integer :playlist_id
    end
  end
end
