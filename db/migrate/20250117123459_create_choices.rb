class CreateChoices < ActiveRecord::Migration[6.1]
  # 選択肢
  def change
    create_table :choices do |t|
      t.references :questions, null:false, foreign_key: { to_table: :problems } #問題ID(FK:問題.ID)
      t.integer :choice, null:false #選択肢
      t.string :content, null:false #内容

      t.timestamps
    end
  end
end
