class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :description
      t.integer :total
      t.references :user, index: true

      t.timestamps
    end
  end
end