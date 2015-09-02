class CreateTableCall < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.string :description, null: false, default: ""
      t.datetime :validate
      t.string :address
      t.string :city
      t.string :province
      t.string :country
      t.timestamps null: false
    end

    add_reference :calls, :user, index: true, foreign_key: true
  end
end
