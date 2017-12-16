class CreateCours < ActiveRecord::Migration[5.1]
  def change
    create_table :cours do |t|
      t.string :name
      t.integer :classe_id

      t.timestamps
    end
    add_index :cours, :classe_id
  end
end
