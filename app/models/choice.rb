class Choice < ApplicationRecord
    belongs_to :question, class_name: 'Problem', foreign_key: 'questions_id'
  
    validates :choice, presence: true, numericality: { only_integer: true }
    validates :content, presence: true, length: { maximum: 100 }
end  