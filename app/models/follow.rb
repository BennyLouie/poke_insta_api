class Follow < ApplicationRecord
    belongs_to :follower, foreign_key: "pokemon_id", class_name: "Pokemon"
    belongs_to :following, foreign_key: "following_id", class_name: "Pokemon"
    validates :following_id, uniqueness: {scope: :pokemon_id, message: "can only be followed once by this Pokemon"}
    validates :following_id, exclusion: { in: [:pokemon_id], message: "cannot follow him/herself"}

end
