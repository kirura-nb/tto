class Problem < ApplicationRecord
    belongs_to :author, class_name: 'User', foreign_key: 'author_id'
    belongs_to :qualification, class_name: 'ExamType', foreign_key: 'qualifications_id'
    belongs_to :answer, class_name: 'Answer', foreign_key: 'answer_id'
  
    has_many :choices, foreign_key: 'questions_id', dependent: :destroy
    has_one :exam, foreign_key: 'questions_id', dependent: :destroy # 1対1の関連付け
  
    validates :questions, presence: true, length: { maximum: 200 }
  end
  