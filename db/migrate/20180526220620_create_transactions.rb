class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.boolean :completed

      t.timestamps
    end
  end
end
