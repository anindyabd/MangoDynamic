class AddConstraintsToOrders < ActiveRecord::Migration
  def up
  	change_column :orders, :name, :string, :null => false
  	change_column :orders, :email, :string, :null => false
  	change_column :orders, :phone_number, :string, :null => false
  	change_column :orders, :address, :string, :null => false
  	change_column :orders, :state, :string, :null => false
  	change_column :orders, :zip_code, :string, :null => false
  	change_column :orders, :plan_type, :string, :null => false
  end
end
