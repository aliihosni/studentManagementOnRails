class CreateAbsences < ActiveRecord::Migration[5.1]
  def change
    create_table :absences do |t|
      t.integer :status
      t.string :justif
      t.date :date
      t.integer :student_id
      t.integer :cour_id

      t.timestamps
    end
    add_index :absences, :student_id
    add_index :absences, :cour_id
  end
end
