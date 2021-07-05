class CreateCoats < ActiveRecord::Migration[6.0]
  def change
    create_table :coats do |t|
      t.string :name,            null: false
      t.integer :prefecture_id,  null: false
      t.string :city,            null: false
      t.string :address,         null: false
      t.integer :start_time_id,  null: false
      t.integer :finish_time_id, null: false
      t.integer :number_id,      null: false
      t.text :info,              null: false
      t.references :user,        null: false,  foreign_key: false
      t.timestamps
    end
  end
end
