class RemoveColumnName < ActiveRecord::Migration[5.0]
  def change
  	remove_column :reports, :advice
	end
end
