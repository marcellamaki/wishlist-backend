class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.text :comment
      t.integer :good_quality
      t.integer :location_quality
      t.integer :good_value

      t.timestamps
    end
  end
end
