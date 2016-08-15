class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|

      t.string :name
      t.string :studentNumber
      t.string :password_digest
      t.integer :grade
      t.string :role
      t.text :rtproflecture

      t.timestamps
    end
  end
end
