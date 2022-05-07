class CreateWordCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :word_categories do |t|
      t.text :name

      t.timestamps
    end
  end
end
