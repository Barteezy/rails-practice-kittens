class KittenCategory < ActiveRecord::Base
  belongs_to :kitten
  belongs_to :category

  validates_uniqueness_of :kitten_id, :scope => :category_id

end