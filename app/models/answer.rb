class Answer < ApplicationRecord
    has_many :problems, foreign_key: 'answer_id', dependent: :destroy
  
    validates :answer, presence: true, length: { maximum: 2 }
    validates :commentary, presence: true, length: { maximum: 500 }
end  