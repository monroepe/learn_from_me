class CreateClassMembers < ActiveRecord::Migration
  def change
    create_table :class_members do |t|
      t.integer :user_id, null: false
      t.integer :course_id, null: false
      t.text :qualifications, null: false
      t.text :reason_for_joining

      t.timestamps
    end
  end
end
