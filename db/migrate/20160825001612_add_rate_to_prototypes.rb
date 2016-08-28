class AddRateToPrototypes < ActiveRecord::Migration
  def change
    add_column :prototypes, :comment_count, :integer, default: 0
  end
end
