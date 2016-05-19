FactoryGirl.define do
  factory :song do

    trait :is_valid do
      title "title"
      url "https://s3.amazonaws.com/playlistApp/songs/kn1vuj9bl4j42bl_cool_song.mp3"
    end

  end
end
