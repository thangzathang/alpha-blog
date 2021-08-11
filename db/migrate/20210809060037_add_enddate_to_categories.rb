class AddEnddateToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :enddate, :datetime
  end
end
