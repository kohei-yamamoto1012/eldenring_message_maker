class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.text :word
      t.references :word_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
