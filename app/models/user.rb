class User < ApplicationRecord
    self.primary_key = 'number'

    belongs_to :department
    has_many :exams, foreign_key: 'respondent_id', dependent: :destroy
    has_many :problems, foreign_key: 'author_id', dependent: :destroy
  
    validates :name, presence: true, length: { maximum: 20 }
    validates :number, presence: true, uniqueness: true, length: { is: 8 }
    # データ有無の確認, データ型をdb登録前に確認, 文字数を固定
    validates :password, presence: true, numericality: { only_integer: true }, length: { is: 6 }
  end
  