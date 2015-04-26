class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.datetime :date
      t.text :contribution

      t.timestamps null: false
    end
  end
end
