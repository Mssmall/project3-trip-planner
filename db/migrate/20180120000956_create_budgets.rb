class CreateBudgets < ActiveRecord::Migration[5.1]
  def change
    create_table :budgets do |t|
      t.integer :cost
      t.text :budget_item
      t.integer :user_id
      t.integer :itinerary_id

      t.timestamps
    end
  end
end
