class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.text :heading
      t.text :note
      t.date :date
      t.integer :user_id

      t.timestamps
    end
  end
end
