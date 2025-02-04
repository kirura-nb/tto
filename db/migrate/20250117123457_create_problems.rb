class CreateProblems < ActiveRecord::Migration[6.1]
  # 問題
  def change
    create_table :problems do |t|
      t.references :author, null:false, foreign_key: {to_table: :users, column: :number } #作成者(FK:学籍番号)
      t.references :qualification, null:false, foreign_key: { to_table: :exam_types } #資格ID(FK:資格種類.ID)
      t.string :questions, null:false #問題(FK:問題.ID)
      t.references :answer, null:false, foreign_key: { to_table: :answers } #回答ID(FK:回答.ID)

      t.references :questions, null: false, foreign_key: { to_table: :problems, column: :id } #問題ID　外部キー取得

      t.timestamps
    end
  end
end
