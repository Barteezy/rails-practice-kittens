class Category < ActiveRecord::Base
  has_many :kitten_categories
  has_many :kittens, through: :kitten_categories
  validates :name, presence: true, uniqueness: {case_sensitive: false}
end