class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.string :session
      t.string :level
      t.string :semester
      t.string :matric_no
      t.string :student_name
      t.string :overall_grading

      t.timestamps
    end
  end
end
