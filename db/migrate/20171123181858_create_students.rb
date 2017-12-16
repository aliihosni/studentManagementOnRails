class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :classe_id

      t.timestamps
    end
    add_index :students, :classe_id
  end
end
