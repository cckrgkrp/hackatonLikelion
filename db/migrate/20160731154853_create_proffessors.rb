class CreateProffessors < ActiveRecord::Migration[5.0]
  def change
    create_table :proffessors do |t|

      t.string :proffessorName
      t.string :proffessorImg
      t.string :proffessorDesc
      t.references :department
      t.timestamps
    end
  end
end
