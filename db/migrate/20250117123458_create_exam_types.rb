class CreateExamTypes < ActiveRecord::Migration[6.1]
  # 資格種類
  def change
    create_table :exam_types do |t|
      t.string :qualifications, null:false #資格名

      t.timestamps
    end
  end
end
