class CreateLectures < ActiveRecord::Migration[5.0]
  def change
    create_table :lectures do |t|

      t.string :lectureName
      t.integer :department_id
      t.timestamps
    end
  end
end
