require 'csv'

CSV.foreach('db/base_sentences.csv', headers: true) do |row|
  BaseSentence.seed do |s|
    s.id = row['id']
    s.sentence = row['sentence']
  end
end

CSV.foreach('db/word_category.csv', headers: true) do |row|
  WordCategory.seed do |s|
    s.id = row['id']
    s.name = row['name']
  end
end

CSV.foreach('db/words.csv', headers: true) do |row|
  Word.seed do |s|
    s.id = row['id']
    s.word_category = WordCategory.find_by(name: row['word_category_name'])
    s.word = row['word']
  end
end