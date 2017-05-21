class CreateAdvices < ActiveRecord::Migration[5.0]
  def change
    create_table :advices do |t|
    	t.string :advice
    	t.string :author
    	t.string :education
    	t.string :firm
    	t.integer :advice_id
      t.timestamps
    end
  end
end
