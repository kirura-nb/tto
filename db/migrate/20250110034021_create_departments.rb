class CreateDepartments < ActiveRecord::Migration[6.1]
  # 学科
  def change
    create_table :departments do |t|
      t.string :department, null:false #学科名

      t.timestamps
    end
  end
end
