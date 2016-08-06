class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.string      :title
      t.string      :catchcopy
      t.text        :concept
      t.references  :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end