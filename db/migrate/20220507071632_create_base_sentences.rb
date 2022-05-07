class CreateBaseSentences < ActiveRecord::Migration[6.0]
  def change
    create_table :base_sentences do |t|
      t.text :sentence

      t.timestamps
    end
  end
end
