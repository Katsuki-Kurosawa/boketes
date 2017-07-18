class AddColumnToAnswer < ActiveRecord::Migration[5.0]
  def change
    add_column :answers, :bads_count, :integer
  end
end
