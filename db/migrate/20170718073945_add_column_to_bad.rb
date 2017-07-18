class AddColumnToBad < ActiveRecord::Migration[5.0]
  def change
    add_column :bads, :answer_id, :integer
    add_column :bads, :user_id, :integer
  end
end
