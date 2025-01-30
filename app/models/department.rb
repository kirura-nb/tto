class Department < ApplicationRecord
    # has_many: users, foreign_key: 'department_id', dependent: :destroy #1対多（1つの学科が多くのuserを持つ）

    validates :department, presence: true, length: { maximum: 20 } #参照元, データの有無, 文字数制限
end