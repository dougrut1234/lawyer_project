class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
    	t.string :course_name
    	t.string :course_name_id

      t.timestamps
    end
  end
end
