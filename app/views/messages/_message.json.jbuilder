json.extract! message, :id, :base_sentence_id, :word_id, :created_at, :updated_at
json.url message_url(message, format: :json)
