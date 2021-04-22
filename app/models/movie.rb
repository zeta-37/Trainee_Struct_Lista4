class Movie < ApplicationRecord
  belongs_to :director
  validates :name, presence: true
end
