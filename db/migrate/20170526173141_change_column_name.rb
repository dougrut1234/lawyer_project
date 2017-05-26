class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :advices, :advice, :text
  end
end
