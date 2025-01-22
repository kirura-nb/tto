class CreateExams < ActiveRecord::Migration[6.1]
  # 試験履歴
  def change
    create_table :exams do |t|
      t.references :respondent, null:false, foreign_key: { to_table: :users, column: :number } #回答者(FK:学籍番号)
      t.references :questions, null:false, foreign_key: { to_table: :problems } #問題ID(FK:問題.ID) :idの場合は省略可能
      t.integer :questions_num, null:false #出題数
      t.integer :answer_num, null:false #正解数
      t.string :user_answer, null:true #回答(user)

      t.timestamps
    end
  end
end
