class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.text        :answer
      t.integer     :theme_id
      t.integer     :user_id
      t.integer     :bads_count
      t.timestamps
    end
  end
end


