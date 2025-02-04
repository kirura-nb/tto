class Department < ApplicationRecord
    has_many :users, foreign_key: 'department_id', dependent: :destroy # 部門に所属するユーザーたち
  
    validates :department, presence: true, length: { maximum: 20 }
  end
  