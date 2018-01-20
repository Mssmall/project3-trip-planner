class AddDefaultValueToShowAttribute < ActiveRecord::Migration[5.1]
  def change
  end

  def up
    change_column :locations, :show_attribute, :boolean, default: true
  end

  def down
    change_column :locations, :show_attribute, :boolean, default: nil
  end
end
