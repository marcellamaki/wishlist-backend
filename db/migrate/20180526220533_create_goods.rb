class CreateGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :goods do |t|
      t.string :name
      t.string :description
      t.string :start_price
      t.string :current_price
      t.boolean :availability

      t.timestamps
    end
  end
end
