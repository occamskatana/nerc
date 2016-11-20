class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.text :body
      t.references :admin, foreign_key: true
      t.references :inquiry, foreign_key: true

      t.timestamps
    end
  end
end
