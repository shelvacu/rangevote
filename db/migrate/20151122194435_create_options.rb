class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.references :poll, index: true, foreign_key: true
      t.string :text
      t.integer :total_vote
      t.integer :num_voted

      t.timestamps null: false
    end
  end
end
