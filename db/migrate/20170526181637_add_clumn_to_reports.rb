class AddClumnToReports < ActiveRecord::Migration[5.0]
  def change
  	add_column :reports, :text, :string
  end
end
