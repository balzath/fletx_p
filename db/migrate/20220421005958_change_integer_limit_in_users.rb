class ChangeIntegerLimitInUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :celular, :numeric
  end 
end
