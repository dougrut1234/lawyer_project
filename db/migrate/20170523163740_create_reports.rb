class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
    	t.integer :report_id
    	t.integer :advice_id
      t.timestamps
    end
  end
end
