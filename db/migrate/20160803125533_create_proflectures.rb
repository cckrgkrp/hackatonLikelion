class CreateProflectures < ActiveRecord::Migration[5.0]
  def change
    create_table :proflectures do |t|

      t.integer :department_id
      t.integer :proffessor_id
      t.integer :lecture_id
      t.timestamps
    end
  end
end
