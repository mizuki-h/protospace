class AddCountToPrototype < ActiveRecord::Migration
  def change
    add_column :prototypes, :count, :integer, default: 0
  end
end