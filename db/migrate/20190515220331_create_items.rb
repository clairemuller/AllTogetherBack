class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :description
      t.text :note
      t.belongs_to :location, foreign_key: true
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end
