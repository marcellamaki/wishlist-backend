class CreateGoodCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :good_categories do |t|

      t.timestamps
    end
  end
end
