class CreateUsers < ActiveRecord::Migration[6.1]
  # ユーザー
  def change
    create_table :users, id: false do |t| #id: falseを追加しidを解除
      t.string :name, null:false #名前
      t.references :department, null:false, foreign_key: { to_table: :department } #学科ID(FK:学科.ID)
      t.string :number, null:false, primary_key: true #学籍番号：主キー
      t.integer :password, null:false #パスワード
      t.integer :re_password, null:false #パスワード

      t.timestamps
    end
  end
end
