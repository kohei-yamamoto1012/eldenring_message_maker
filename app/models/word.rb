class Word < ApplicationRecord
  belongs_to :word_category
  has_many :messages
end
