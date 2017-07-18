class CreateBads < ActiveRecord::Migration[5.0]
  def change
    create_table :bads do |t|

      t.timestamps
    end
  end
end
