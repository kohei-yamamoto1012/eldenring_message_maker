class Message < ApplicationRecord
  belongs_to :base_sentence
  belongs_to :word

  def message
    self.base_sentence.sentence.gsub('***', self.word.word)
  end
end
