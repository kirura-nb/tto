class CreateAnswers < ActiveRecord::Migration[6.1]
  # 回答
  def change
    create_table :answers do |t|
      t.string :answer, null:false #回答
      t.string :commentary, null:false #解説

      t.timestamps
    end
  end
end
