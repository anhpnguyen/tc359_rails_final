class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.datetime :date
      t.text :subject
      t.text :note
      t.text :comment

      t.timestamps null: false
    end
  end
end
