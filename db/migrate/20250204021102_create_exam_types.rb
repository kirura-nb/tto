class CreateExamTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :exam_types do |t|
      t.string :qualification, null:false #資格名
      t.timestamps
    end
  end
end
