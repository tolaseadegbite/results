class AddGenderToResult < ActiveRecord::Migration[7.0]
  def change
    add_column :results, :gender, :string
  end
end
