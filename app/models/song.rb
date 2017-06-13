class Song < ApplicationRecord
  belongs_to :artist


validates :name, presence: true, length: {minimum: 2}

validates :artist, presence: true
end
# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string
#  artist_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_songs_on_artist_id  (artist_id)
#

