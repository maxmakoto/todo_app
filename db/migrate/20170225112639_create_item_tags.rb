class CreateItemTags < ActiveRecord::Migration
  def change
    create_table :item_tags do |t|
      t.references :item, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
