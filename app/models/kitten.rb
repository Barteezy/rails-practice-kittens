class Kitten < ActiveRecord::Base
  has_many :kitten_categories
  has_many :categories, through: :kitten_categories
  validates :image, presence: true

end