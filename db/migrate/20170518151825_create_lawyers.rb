class CreateLawyers < ActiveRecord::Migration[5.0]
  def change
    create_table :lawyers do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :name_of_firm
    	t.string :password
    	t.integer :lawyer_id
    	
      t.timestamps
    end
  end
end
