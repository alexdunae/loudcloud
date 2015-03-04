class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :song
      t.text :body
      t.timestamps null: false
    end
  end
end
