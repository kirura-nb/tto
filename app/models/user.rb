class User < ApplicationRecord
  self.primary_key = 'number'

  belongs_to :department
  has_many :exams, foreign_key: 'respondent_id', dependent: :destroy
  has_many :problems, foreign_key: 'author_id', dependent: :destroy

  # 仮想属性として re_password を定義
  attr_accessor :re_password

  validates :name, presence: true, length: { maximum: 20 }
  validates :number, presence: true, uniqueness: true, length: { is: 6 }
  validates :password, presence: true, numericality: { only_integer: true }, length: { is: 6 }

  # password と re_password が一致することを確認するバリデーション
  validate :passwords_match

  private

  def passwords_match
    if password != re_password
      errors.add(:re_password, "とパスワードが一致しません")
    end
  end
end
  