class CreateMessage < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
