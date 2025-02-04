class ExamType < ApplicationRecord
    has_many :problems, foreign_key: 'qualifications_id', dependent: :destroy
  
    validates :qualification, presence: true, length: { maximum: 20 }
end
