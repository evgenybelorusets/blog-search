class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :title
      t.boolean :is_category, default: false

      t.timestamps
    end
  end
end
