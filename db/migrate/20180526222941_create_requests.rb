class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :category_id
      t.integer :role_id

      t.timestamps
    end
  end
end
