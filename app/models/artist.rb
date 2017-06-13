# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string
#  genre_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_artists_on_genre_id  (genre_id)
#

class Artist < ApplicationRecord
  belongs_to :genre
  has_many :songs

  # Validations
    #Has a name
    #Name
      # present
      # unique
  validates :name, presence: true, uniqueness: true
    # Genre id
      # present
    validates :genre_id, presence: true
    # Genre actually exists
    validates :genre, presence: true


end
