class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name, null: false
      t.integer :subject_id, null: false
      t.integer :user_id, null: false
      t.date :start_date
      t.integer :duration
      t.integer :level_id, null: false
      t.float :price, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
