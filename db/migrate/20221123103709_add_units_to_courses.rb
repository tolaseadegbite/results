class AddUnitsToCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :units, :string
  end
end