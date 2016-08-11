class CreatePrototypeImages < ActiveRecord::Migration
  def change
    create_table :prototype_images do |t|
      t.text        :content
      t.references  :prototype, index: true, foreign_key: true
      t.integer     :status
      t.timestamps
    end
  end
end
