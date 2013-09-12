class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :quantity
      t.decimal :price
      t.string :source
      t.string :status
      t.integer :member_id
      t.string :comments

      t.timestamps
    end
  end
end
