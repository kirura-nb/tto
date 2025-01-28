class Exam < ApplicationRecord
    belongs_to :respondent, class_name: 'User', foreign_key: 'respondent_id'
    belongs_to :question, class_name: 'Problem', foreign_key: 'questions_id'
  
    validates :questions_num, presence: true, numericality: { only_integer: true }
    validates :answer_num, presence: true, numericality: { only_integer: true }
    validates :user_answer, allow_nil: true, length: { maximum: 2 }
end
  