class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :text

      t.timestamps null: false
    end
  end
end
