class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :option, index: true, foreign_key: true
      t.integer :weight
      t.string :voter_ip

      t.timestamps null: false
    end
  end
end
