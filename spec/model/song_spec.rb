require 'rails_helper'

describe Song do

  it "is valid with a song title and a valid url"  do
     expect(FactoryGirl.create(:song, title: "cool_song", url: "https://s3.amazonaws.com/playlistApp/songs/kn1vuj9bl4j42bl_cool_song.mp3")).to be_valid
  end

  it "is not valid with a song title and invalid url" do
    expect{FactoryGirl.create(:song, title: "cool_song", url: "//s3.amazonaws.com/playlistApp/songs/kn1vuj9bl4j42bl_cool_song.mp3")}.to raise_exception
    #TODO
    # expect(FactoryGirl.build(:song, title: "cool_song", url: "https://s3.amazonaws.com/playlistApp/songs/kn1vuj9bl4j42bl_cool_song.jpg")).to raise_exception(ActiveRecord::RecordInvalid)
    # expect(FactoryGirl.build(:song, title: "cool_song", url: "https://s3.amazonaws.com/hackApp/songs/kn1vuj9bl4j42bl_cool_song.mp3")).to raise_exception(ActiveRecord::RecordInvalid)

  end

  it "is invalid without a song title" do
    expect{FactoryGirl.create(:song,  url: "https://s3.amazonaws.com/playlistApp/songs/kn1vuj9bl4j42bl_cool_song.mp3")}.to raise_exception(ActiveRecord::RecordInvalid)
  end

  it "is invalid without a url" do
    expect{FactoryGirl.create(:song,  title: "cool_song")}.to raise_exception(ActiveRecord::RecordInvalid)
  end



end
