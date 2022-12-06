class CreateCummulativeGrades < ActiveRecord::Migration[7.0]
  def change
    create_table :cummulative_grades do |t|
      t.integer :tua
      t.integer :tup
      t.integer :twgp
      t.integer :gpa
      t.integer :tu
      t.references :result, null: false, foreign_key: true

      t.timestamps
    end
  end
end
