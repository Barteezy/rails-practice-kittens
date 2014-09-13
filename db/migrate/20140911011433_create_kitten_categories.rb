class CreateKittenCategories < ActiveRecord::Migration
  def change
    create_table :kitten_categories, id: false do |t|
        t.belongs_to :kitten
        t.belongs_to :category
    end
  end
end
