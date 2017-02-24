class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :desc
      t.boolean :todo_flag
      t.references :list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
