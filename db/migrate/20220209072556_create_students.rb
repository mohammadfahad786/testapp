class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :roll_no
      t.string :name
      t.string :semster

      t.timestamps
    end
  end
end
